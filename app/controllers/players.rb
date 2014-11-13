# Player's Landing page after log in
get '/players/:username' do
  @player = Player.find_by(id: session[:player_id])

  erb :'players/show'
end

# Logging in . . . . .
post '/login' do
  @player = Player.find_or_create_by(username: params[:username])
  session[:player_id] = @player.id
  redirect "/players/#{@player.username}"
end

delete '/logout' do
  session.clear
  redirect "/?logout_success"
end