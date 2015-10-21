class User < ActiveRecord::Base

  has_many :tracks, :reviews

  validates :username, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :password, presence: true, uniqueness: true, length: { maximum: 20 }
  validates :email, presence: true

end