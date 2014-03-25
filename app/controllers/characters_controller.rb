class CharactersController < ApplicationController

  # before_action :is_authenticated?

  def home
    @message = "hello"
    @character = User.all.entries.sample
  end

  def top

  end

  def show
    @images = ["Blitzcrank_0.jpg", "Caitlyn_0.jpg",  "Fiddlesticks_0.jpg",]
    @random_no = rand(3)
    @random_image = @images[@random_no]
  end

end



      # "Jinx_0.jpg",
      # "Miss Fortune_0.jpg",
      # "Olaf_0.jpg",
      # "Singed_0.jpg",
      # "Tryndamere_0.jpg",
      # "Vi_0.jpg",
      # "Ziggs_0.jpg"]