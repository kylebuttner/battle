require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  def self.store_game=(game)
    @game = game
  end

  def self.game
    @game
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    self.class.store_game=Game.new(player1, player2)
    redirect '/play'
  end

  before '/play' do
    @player1_name = game.player1.name
    @player2_name = game.player2.name
  end

  get '/play' do
    @current_player = game.current_player.name
    @p1_hp = game.player1.hp
    @p2_hp = game.player2.hp
    erb(:play)
  end

  get '/attacked' do
    game.attack(game.opponent)
    @damaged_player = game.current_player.name
    @damaged_player_hp = game.current_player.hp
    game.any_dead? ? redirect('/game_over') : erb(:attacked)
  end

  get '/game_over' do
    @damaged_player = game.current_player.name
    erb(:game_over)
  end

  helpers do
    def game
      self.class.game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
