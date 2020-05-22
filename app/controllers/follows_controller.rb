class FollowsController < ApplicationController
    def index
        follows = Follow.all
        render json: FollowSerializer.new(follows)
    end
end
