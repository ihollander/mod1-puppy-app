class Plant < ActiveRecord::Base
  has_many :visits
  has_many :puppies, through: :visits
end