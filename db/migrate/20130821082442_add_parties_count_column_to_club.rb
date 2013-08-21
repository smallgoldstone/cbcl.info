class AddPartiesCountColumnToClub < ActiveRecord::Migration
  def change
  	add_column :clubs, :parties_count, :integer, :default => 0
  end
end
