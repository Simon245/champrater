class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def home
    @message = "hello"
    @character = User.all.entries.sample
  end

  def top

  end



end