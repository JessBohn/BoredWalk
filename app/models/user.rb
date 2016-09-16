class User < ApplicationRecord
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :games, through: :groups
  has_and_belongs_to_many :bars

end
