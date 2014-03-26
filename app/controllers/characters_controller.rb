class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def home
    @message = "hello"
    @character = Character.all.entries.sample
  end

  def top

  end

  def show

  end

end



      # "Jinx_0.jpg",
      # "Miss Fortune_0.jpg",
      # "Olaf_0.jpg",
      # "Singed_0.jpg",
      # "Tryndamere_0.jpg",
      # "Vi_0.jpg",
      # "Ziggs_0.jpg"]