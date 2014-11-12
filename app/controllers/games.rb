get '/games' do
  erb :'/games/create'
end

get '/games/show' do
  erb :'/games/show'
end

post '/games/' do
  #new_game = Games.create(session[:player_id])
  redirect "/games"
end