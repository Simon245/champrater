

class Character

  include Mongoid::Document
  include Mongoid::Timestamps



  field :name, type: String
  field :image, type: String
  field :votes, type: Integer
  field :score, type: Integer


  def update_count votes
    self.votes += 1
    self.score += votes
    self.save
  end




end