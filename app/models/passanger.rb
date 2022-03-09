class Passanger < ApplicationRecord
    has_many :flights, through: :bookings
    has_many :bookings
end
