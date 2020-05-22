class Event < ApplicationRecord
    belongs_to :user #event that was created by a single user
    has_many :joined_events
    has_many :users, through: :joined_events 
    # users who are attending the events
end
