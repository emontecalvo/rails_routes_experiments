class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find_by(:id => params[:id])
    p @user
    unless @user.nil?
      render json: @user
    else
      render json: @user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def new
    render text: "I don t want to be a soldier!"
  end

  def edit
    render text: "We got this!"
  end

  def create
    user = User.new(params_user)

    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    render json: params
  end

  def destroy
    user = User.find_by(:id => params[:id])
    unless user.nil?
      user.delete
      render text: "Delete Completed!"
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private

  def params_user
    params.require(:user).permit(:name, :email)
  end

end
