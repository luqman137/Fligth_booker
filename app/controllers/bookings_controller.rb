class BookingsController < ApplicationController
  

  before_action :authenticate_user!
    def index
      
        @booking = Booking.all
    end
    def show
      @booking = Booking.find(params[:id])
    end

    def new
        @booking = Booking.new(flight_id: params[:flight_id])
      end
    def create
      
        @booking = Booking.new(booking_params)
       
        if @booking.save
          redirect_to @booking
        else
          render :new, status: :unprocessable_entity
        end
      end
      def booking_params
        params.require(:booking).permit(:flight_id, :price, :passanger_id)
      end
end
