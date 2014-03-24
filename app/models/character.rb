

class Character

  include Mongoid::Document
  include Mongoid::Timestamps



  field :name, type: String
  field :image, type: String
  field :votes, type: Integer
  field :score, type: Integer


end