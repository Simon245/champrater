module ApplicationHelper

  def average_score
    return @character.score / @character.votes
  end

end