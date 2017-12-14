class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy ]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end
  
  def followers
      set_user
      @title="Followers"
      @users = @user.followers
      render 'follow_page'
  end

  def following
      set_user
      @title="Following"
      @users = @user.followees
      render 'follow_page'
  end

  def favorite_artists
      set_user
      @artists = @user.favorite_artists
  end

  def add_to_list
      set_user
      lid=params[:lid]
      tid = params[:tid]
      list = @user.playlists.find_by( lid: lid )
      track = Track.find_by(tid: tid)
      if list && track && list.tracks.find_by(tid: tid).nil? then
          list.tracks << track
      end
      redirect_to playlists_user_path(@user)
  end

  def unlikes_artist
      set_user
      aid=params[:aid]
      artist = Artist.find_by( aid: aid)
      if @user && !artist.nil? then
          @user.unlikes!(artist)
      end
      redirect_to favorite_artists_user_path(@user)
  end

  def likes_artist
      set_user
      aid=params[:aid]
      artist = Artist.find_by( aid: aid)
      if @user && !artist.nil? then
          @user.likes!(artist)
      end
      redirect_to favorite_artists_user_path(@user)
  end

  def play_history
      set_user
      @play_history = @user.play_history
  end

  def playlists
      set_user
      @playlists = @user.playlists
      @newlist = Playlist.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
      params = user_params
      passwd = params[:upassword]
      encrypted_passwd = BCrypt::Password.create(passwd)
      params[:upassword]=encrypted_passwd
      @user = User.new(params)

      if @user.save
          redirect_to @user, notice: 'User was successfully created.'
      else
          render :new
      end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:uname, :uemail, :ucity, :upassword, :ulogin)
    end
end

