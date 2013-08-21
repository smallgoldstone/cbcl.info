class AddMemberCountColumnToClub < ActiveRecord::Migration
  def change
  	add_column :clubs, :join_clubs_count, :integer, :default => 0
  end
end
