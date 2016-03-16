require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.start(Game.new(player_1, player_2))
    redirect '/play'
  end

  get '/play' do
    @game = Game.current
    erb :play
  end

  get '/attack' do
    @game = Game.current
    @game.attack(@game.opponent_of(@game.current_turn))
    @game.switch_turns
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
