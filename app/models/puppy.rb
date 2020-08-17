class Puppy < ActiveRecord::Base
  has_many :visits
  has_many :plants, through: :visits
end