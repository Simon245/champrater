module ApplicationHelper

  def average_score
    return 0 if @character.votes == 0

    return @character.total_score / @character.votes
  end

end