class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.string :type
      t.integer :num_of_seats
      t.integer :theater_id

      t.timestamps
    end
  end
end
