class Api::V1::EventsController < ApplicationController

    def index
        events = Event.all 
        render json: EventSerializer.new(events)
    end

    def create
         event = Event.new(event_params)
         if event.save 
            render json: EventSerializer.new(event), status: :accepted
         else
            render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
         end
    end

    def show 
        event = Event.find_by_id(params[:id])
        render json: EventSerializer.new(event)
    end

    # def destroy 
    #     event = Event.find_by(id: params[:id]) 
    #     event.destroy
    # end

    private
    def event_params
        params.require(:event).permit(:title, :description, :startTime, :endTime, :category, :location)
    end
end
