class Post < ActiveRecord::Base
  attr_accessible :description, :image, :title, :url
  before_create :generate_url

  def to_param
    self.url
  end

  private

  def generate_url
    require 'digest/sha1'
    self.url = (Digest::SHA1.hexdigest Time.now.to_s)[0..7]
  end
end
