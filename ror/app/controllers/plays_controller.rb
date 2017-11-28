class PlaysController < ApplicationController
  before_action :set_play, only: [:show, :edit, :update, :destroy]

  # GET /plays
  def index
    @plays = Play.all
  end

  # GET /plays/1
  def show
  end

  # GET /plays/new
  def new
    @play = Play.new
  end

  # GET /plays/1/edit
  def edit
  end

  # POST /plays
  def create
    @play = Play.new(play_params)

    if @play.save
      redirect_to @play, notice: 'Play was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /plays/1
  def update
    if @play.update(play_params)
      redirect_to @play, notice: 'Play was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /plays/1
  def destroy
    @play.destroy
    redirect_to plays_url, notice: 'Play was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_play
      @play = Play.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def play_params
      params.require(:play).permit(:Follow, :Rate)
    end
end
