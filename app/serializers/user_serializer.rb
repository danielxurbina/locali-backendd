class FollowSerializer
    include FastJsonapi::ObjectSerializer
    attributes :follower, :followee
end