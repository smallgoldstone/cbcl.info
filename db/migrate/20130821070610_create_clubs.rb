class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.text :desc
      t.references :creator

      t.timestamps
    end
    add_index :clubs, :creator_id
  end
end
