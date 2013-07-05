class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :seat_num
      t.float :price
      t.integer :user_id
      t.integer :screening_id

      t.timestamps
    end
  end
end
