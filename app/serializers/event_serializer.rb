class EventSerializer
    include FastJsonapi::ObjectSerializer
    attributes :user, :location, :title, :date, :description, :image_url, :price
end