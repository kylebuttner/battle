require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    @p2_hp = $game.player2.hp
    erb(:play)
  end

  get '/attacked' do
    @game = $game
    @player1_name = $game.player1.name
    @player2_name = $game.player2.name
    @p2_hp = @game.attack(@game.player2)
    erb(:attacked)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
