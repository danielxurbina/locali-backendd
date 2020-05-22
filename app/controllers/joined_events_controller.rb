class JoinedEventsController < ApplicationController
    def index
        joined_events = JoinedEvent.all
        render json: JoinedEventSerializer.new(joined_event)
    end
end
