class FollowsController < ApplicationController

    def index
        follows = Follow.all
        render json: FollowSerializer.new(follows)
    end

    # remember to change routes when adding destroy method to unfollow
end
