require 'sinatra/base'

class Battle < Sinatra::Base

  MAX_HP = 60
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @p2_hp = MAX_HP
    erb(:play)
  end

  # post '/play' do
  #   @p2_hp -= 2
  #   p @p2_hp
  #   redirect '/attacked'
  # end

  get '/attacked' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @p2_hp = MAX_HP
    @p2_hp -= 2
    erb(:attacked)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
