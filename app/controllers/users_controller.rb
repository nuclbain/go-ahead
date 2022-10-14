# frozen_string_literal: true

# This class is a controller for the user model.
class UsersController < ApplicationController
  def index
    @users = user.scoped
  end

  def show
    @user = user.find(params[:id])
  end

  def create
    @user = user.new(params[:user])
  end

  def update
    @user = user.find(params[:id])
  end

  def edit
    @user = user.find(params[:id])
  end

  def destroy
    user = user.find(params[:id])
  end
end
