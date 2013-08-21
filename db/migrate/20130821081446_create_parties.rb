class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.datetime :date_at
      t.text :desc
      t.references :club

      t.timestamps
    end
    add_index :parties, :club_id
  end
end
