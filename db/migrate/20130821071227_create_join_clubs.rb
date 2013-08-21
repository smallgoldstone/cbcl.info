class CreateJoinClubs < ActiveRecord::Migration
  def change
    create_table :join_clubs do |t|
      t.references :club
      t.references :member

      t.timestamps
    end
    add_index :join_clubs, :club_id
    add_index :join_clubs, :member_id
  end
end
