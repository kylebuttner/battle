require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'
require_relative './lib/attack'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1], "http://orig02.deviantart.net/634f/f/2012/237/6/c/baby_fluffy_kitten_by_pikachuballoon-d5cdjsn.jpg")
    player2 = Player.new(params[:player2], "http://media.mydogspace.com.s3.amazonaws.com/wp-content/uploads/2013/08/puppy-500x350.jpg")
    Game.start(Game.new(player1, player2))
    redirect '/play'
  end

  before '/play' do
    @player1 = game.player1
    @player2 = game.player2
  end

  get '/play' do
    @current_player = game.current_player
    erb(:play)
  end

  post '/attack' do
    type = "basic" if !!params[:basic_attack]
    type = "random" if !!params[:random_attack]
    Attack.run(game.current_opponent, type)
    redirect '/attacked'
  end

  get '/attacked' do
    @current_player = game.current_player
    @current_opponent = game.current_opponent
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
