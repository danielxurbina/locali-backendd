class JoinedEventsController < ApplicationController
    def index
        joined_events = JoinedEvent.all
        render json: JoinedEventSerializer.new(joined_events)
    end
end`