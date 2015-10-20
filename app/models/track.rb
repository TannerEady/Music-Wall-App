class Track < ActiveRecord::Base

  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true, length: { maximum: 100 }
  validates :author, presence: true, length: { maximum: 35 }

end