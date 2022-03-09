class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      #t.references :flight, foreign_key: true
      t.integer :price
      t.belongs_to :flight
      t.belongs_to :passanger
      t.timestamps
    end
  end
end
