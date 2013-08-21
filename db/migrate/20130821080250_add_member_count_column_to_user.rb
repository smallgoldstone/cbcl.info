class AddMemberCountColumnToUser < ActiveRecord::Migration
  def change
  	add_column :users, :join_clubs_count, :integer, :default => 0
  end
end
