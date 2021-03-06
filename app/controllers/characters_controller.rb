class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def index
    @message = "hello"
    @character = Character.all.entries.sample
  end

  def rating
    @character = Character.find_by _id: params[:character_id]
    @character.update_count params[:rating]
    redirect_to(:back)
  end

  def vote
    @user = User.new

  end

  def search
    @character = Character.search params[:search]
    render :index
  end

  def show

  end

end