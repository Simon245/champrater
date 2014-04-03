module ApplicationHelper

  def average_score
    return @character.total_score / @character.votes
  end

end