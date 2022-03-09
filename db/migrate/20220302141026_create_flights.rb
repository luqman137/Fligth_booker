class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.datetime :date_time
      t.references :departure_airport, index: true, foreign_key: {to_table: :airports}
      t.references :arrival_airport, index: true, foreign_key: {to_table: :airports}
      t.timestamps
    end
  end
end
