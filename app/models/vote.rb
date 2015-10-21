class Vote < ActiveRecord::Base

  has_many :tracks
  has_many :users

  validate :no_duplicate_votes

  def no_duplicate_votes
    @votes = Vote.all
    @votes.each do |vote|
      if vote.track_id == track_id && vote.user_id == user_id
        errors.add(:user_id, "You already voted for this song. Nice try.")  
      end
    end
  end

end