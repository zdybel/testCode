class OpeningsController < ApplicationController
  def index
  end

  def show
    @user = User.find(current_user.id)
    @user_id = @user.id
    @user_identity = @user.identity
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
