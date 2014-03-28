class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def home
    @message = "hello"
    @character = Character.all.entries.sample

  end

  def rating
    @character = Character.find_by _id: params[:rate_form]
    @character.update_count params[:rate]
  end

  def vote
    @user = User.new

  end

  def show

  end

end