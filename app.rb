require 'sinatra/base'

class Battle < Sinatra::Base

  MAX_HP = 60
  enable :sessions
  @hp_count = 0

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

  post '/play' do
    p params[:player2]
    session[:p2_damage] = MAX_HP - @hp_count
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
