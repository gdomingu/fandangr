class CreateTheaters < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :address
      t.integer :num_of_rooms

      t.timestamps
    end
  end
end
