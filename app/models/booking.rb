class Booking < ApplicationRecord
   belongs_to :flight, class_name: 'Flight'
   belongs_to :passanger , class_name: 'Passanger'
end
