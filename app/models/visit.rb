class Visit < ActiveRecord::Base
  belongs_to :plant
  belongs_to :puppy
end