class JoinedEventsController < ApplicationController
    
    def index
        joined_events = JoinedEvent.all
        render json: JoinedEventSerializer.new(joined_events)
    end

    def create
        joined_event = JoinedEvent.create(joined_events_params)
        render json: joined_event
    end

    def show 
        joined_event = JoinedEvent.find(params[:id])
        render json: JoinedEventSerializer.new(joined_event)
    end

    private

    def joined_events_params
        params.require(:joined_event).permit(:user_id, :event_id)
    end
end