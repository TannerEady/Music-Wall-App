class AddVotes < ActiveRecord::Migration

  def change
    create_table :votes do |t|
      t.references :song
    end
  end

end