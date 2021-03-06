class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def show
    if logged_in?
      @user = User.find_by(id: params[:id])
      if @user
        render 'show'
      else
        redirect_to appointments_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if logged_in? && current_user = @user
      @user.destroy
      redirect_to root_path
    else
      redirect_to user_path(@user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :email, :password, :photo_path, :phone_number, :type)
  end
end
