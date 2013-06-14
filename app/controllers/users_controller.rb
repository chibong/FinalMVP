class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:user_id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.password = params[:password]

    if @user.save
      session["user_id"] = @user.id
      redirect_to questions_url(@user)
    else
      redirect_to "/users/new", notice: "User already registered."
    end
  end

  def edit
    @user = User.find_by_id(params[:user_id])
  end

  def update
    @user = User.find_by_id(params[:user_id])
    @user.name = params[:name]
    @user.password = params[:password]

    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def home
    @users = User.all
  end

  def destroy
    @user = User.find_by_id(params[:user_id])
    @user.destroy
    redirect_to users_url
  end
end

