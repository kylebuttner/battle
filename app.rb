require 'sinatra'
enable :sessions

get '/' do
  erb(:index)
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  @name1 = session[:player_1_name]
  @name2 = session[:player_2_name]
  @attacked = session[:attacked]
  erb(:play)
end

post '/attack' do
  @name1 = session[:player_1_name]
  @name2 = session[:player_2_name]
  # p @attacked = params[:attack]
  session[:attacked] =params[:attack]
  redirect '/play'
end
