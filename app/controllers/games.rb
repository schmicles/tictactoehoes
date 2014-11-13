# Show all available games / online users???
get '/lobby' do
  @lobby = Game.where(status: "waiting for opponent")
  erb :'games/show'
end

# Creating game under username
get '/games/:game_id' do
  @player = Player.find_by(id: session[:player_id])
  erb :'/games/create'
end

# Creating New Game
post '/games' do
  @player_1 = Player.find_by(id: session[:player_id])
  @new_game = @player_1.games.create(player_1_id: params[:player_1_id], status: "waiting for opponent")
  #@player_2 = Player.find_by()
  redirect "/games/#{@new_game.id}"
end

=begin
# ----- Show the upload form -----
get '/albums/:id/upload' do
  @new_album = Album.find_by(id: params[:id])
  @user = User.find_by(id: session[:user_id])
  erb :'/photos/new'
end


    # ----- Add Photos to Album -----
post '/albums/:album_id' do
  @current_album = Album.find_by(id: params[:album_id])
  @user = User.find_by(id: session[:user_id])

  redirect "/albums/#{@current_album.id}/upload"
end
=end