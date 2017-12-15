class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :edit, :update, :destroy, :delete_track]
  include SessionsHelper

  # GET /playlists
  def index
    @playlists = Playlist.all
  end

  # GET /playlists/1
  def show
  end

  # GET /playlists/new
  def new
      if !logged_in? then
          redirect_to '/login'
          return 
      end
      @playlist = Playlist.new
  end

  # GET /playlists/1/edit
  def edit
  end

  # POST /playlists
  def create
      if !logged_in? then
          redirect_to login_url
          return 
      end
    @playlist = Playlist.new(playlist_params)
    @playlist.ldate = Time.now
    @playlist.lpublic = true
    user = current_user
    if user.playlists << @playlist
      redirect_to playlists_user_path(user)
    else
      render :new
    end
  end

  # PATCH/PUT /playlists/1
  def update
    if @playlist.update(playlist_params)
      redirect_to @playlist, notice: 'Playlist was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /playlists/1
  def destroy
	  user = current_user 
	  if user and user.playlists.include? @playlist then
		  @playlist.destroy
		  redirect_to playlists_user_path(user), notice: 'Playlist was successfully destroyed.'
		  
	  else
		  render status: 403
	  end
  end

  def delete_track
	  tid = params[:tid]
	  track = @playlist.tracks.find_by( tid: tid)
	  if track then
		  @playlist.tracks.delete (track)
	  end
	  redirect_to @playlist
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_params
      params.require(:playlist).permit(:ltitle, :lpublic)
    end
end
