class Track < ActiveRecord::Base

  belongs_to :user
  has_many   :reviews

  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true, length: { maximum: 100 }
  validates :author, presence: true, length: { maximum: 35 }

end