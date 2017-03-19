class Song < ActiveRecord::Base
  validates :title, :lyrics, :presence => true
end
