class UserSerializer
    include FastJsonapi::ObjectSerializer
    attributes  :name, :bio, :image_url, :password, :username, :followers, :followees, :events
end