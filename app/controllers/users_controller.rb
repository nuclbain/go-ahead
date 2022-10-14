# frozen_string_literal: true

# This class is a controller for the user model.
class UsersController < ApplicationController
  def index
    @users = User.scoped
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
  end

  def update
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user)
          .permit(:email, :password, :password_confirmation, :first_name, :last_name, :invite_code)
  end
end
