class EventsController < ApplicationController
    def index
        events = Event.all
        render json: EventSerializer.new(events)
    end

    def create
        event = Event.create(events_params)
        render json: event
    end

    private

    def events_params
        params.require(:event).permit(:title, :location, :description, :image_url, :price, :date)
    end
end
