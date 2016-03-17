require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/attack'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    Game.start(Game.new(player1, player2))
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

  post '/attack' do
    type = "basic" if !!params[:basic_attack]
    type = "random" if !!params[:random_attack]
    Attack.run(game.current_opponent, type)
    redirect '/attacked'
  end

  get '/attacked' do
    @damaged_player = game.current_opponent.name
    @damaged_player_hp = game.current_opponent.hp
    game.switch_player
    game.any_dead? ? redirect('/game_over') : erb(:attacked)
  end

  get '/game_over' do
    @damaged_player = game.current_player.name
    erb(:game_over)
  end

  helpers do
    def game
      Game.current
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
