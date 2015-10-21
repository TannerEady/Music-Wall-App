class Vote < ActiveRecord::Base

  has_many :tracks
  has_many :users

end