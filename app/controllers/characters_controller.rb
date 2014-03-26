class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def home
    @message = "hello"
    @character = Character.all.entries.sample

  end

  def rating

  end

  def vote
    @user = User.new

  end

  def show

  end

end