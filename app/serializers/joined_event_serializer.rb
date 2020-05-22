class JoinedEventSerializer
    include FastJsonapi::ObjectSerializer
    attributes :event, :user
end