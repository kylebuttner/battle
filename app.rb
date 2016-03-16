require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base

  MAX_HP = 60
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @p2_hp = MAX_HP
    erb(:play)
  end

  get '/attacked' do
    @player1_name = $player1.name
    @player2_name = $player2.name
    @p2_hp = MAX_HP
    @p2_hp -= 2
    erb(:attacked)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
