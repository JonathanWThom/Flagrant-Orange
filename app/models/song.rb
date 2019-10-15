class Song < ActiveRecord::Base
  has_one_attached :audio
  # validates_attachment_content_type :audio, :content_type => ['audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio', 'audio/wav', 'audio/x-wav']
  validates :title, :lyrics, :presence => true
end
