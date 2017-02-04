class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :departing_id
      t.integer :arriving_id
      t.datetime :departure_time
      t.datetime :arrival_time

      t.timestamps
    end
  end
end
