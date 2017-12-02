class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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
      #filtered(params.require(:user))
    end
    #def filtered(user_params)
    #    error_str = nil
    #    loop do
    #        p1, p2 = user_params[:upassword], user_params[:confirmation]
    #        if p1!=p2 then
    #            error_str='password and confirmation do not match'
    #            break
    #        end
    #        break
    #    end
    #    return nil unless error_str.nil?
    #    return user_params.permit(:uemail, :ulogin, :ucity, :ulogin, :upassword)
    #end
end
