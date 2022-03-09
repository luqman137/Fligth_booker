class Flight < ApplicationRecord
    belongs_to :departure_airport, :class_name => "Airport"  
    belongs_to :arrival_airport, :class_name => "Airport"

    has_many :passengers, through: :bookings
    has_many :bookings

    def self.search(search)

      #  byebug
        if search
            #byebug
            where("departure_airport_id = ? AND arrival_airport_id = ?",search[:From],search[:To])
        else
            @flights=Flight.all
        end
    end    
end
