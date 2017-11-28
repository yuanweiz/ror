class PlaylistTracksController < ApplicationController
  before_action :set_playlist_track, only: [:show, :edit, :update, :destroy]

  # GET /playlist_tracks
  def index
    @playlist_tracks = PlaylistTrack.all
  end

  # GET /playlist_tracks/1
  def show
  end

  # GET /playlist_tracks/new
  def new
    @playlist_track = PlaylistTrack.new
  end

  # GET /playlist_tracks/1/edit
  def edit
  end

  # POST /playlist_tracks
  def create
    @playlist_track = PlaylistTrack.new(playlist_track_params)

    if @playlist_track.save
      redirect_to @playlist_track, notice: 'Playlist track was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /playlist_tracks/1
  def update
    if @playlist_track.update(playlist_track_params)
      redirect_to @playlist_track, notice: 'Playlist track was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /playlist_tracks/1
  def destroy
    @playlist_track.destroy
    redirect_to playlist_tracks_url, notice: 'Playlist track was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_playlist_track
      @playlist_track = PlaylistTrack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def playlist_track_params
      params.fetch(:playlist_track, {})
    end
end
