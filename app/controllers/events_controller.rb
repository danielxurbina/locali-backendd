class EventsController < ApplicationController
    def index
        events = Event.all
        render json: EventSerializer.new(events)
    end

    def create
        event = Event.create(events_params)
        render json: event
    end

    def show
        event = Event.find(params[:id])
        render json: EventSerializer.new(event)
    end

    private

    def events_params
        params.require(:event).permit(:user_id, :title, :location, :description, :image_url, :price, :date)
    end

end
