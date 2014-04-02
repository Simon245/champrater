class Character

  include Mongoid::Document
  include Mongoid::Timestamps



  field :name, type: String
  field :image, type: String
  field :votes, type: Integer
  field :score, type: Integer


  def update_count votes
    self.votes += 1
    self.score += votes.to_i
    self.save
  end

  def self.search(search)
    if search
      Character.where(name: /#{search}.*/i).first
    else
      Character.all.entries
    end
  end




end