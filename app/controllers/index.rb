get '/' do
  if session[:player_id] != nil
    @player = Player.find_by(id: session[:player_id])
    redirect "/players/#{@player.username}"
  else
    erb :'/sessions/new'
  end
end
