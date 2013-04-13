class Post < ActiveRecord::Base
  attr_accessible :description, :image, :title, :url
end
