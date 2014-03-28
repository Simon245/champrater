module ApplicationHelper

  def rating_calc
    return @character.score / @character.votes
  end

end