class CreateScreenings < ActiveRecord::Migration
  def change
    create_table :screenings do |t|
      t.string :name
      t.integer :time
      t.string :release_date
      t.string :rating
      t.integer :room_id

      t.timestamps
    end
  end
end
