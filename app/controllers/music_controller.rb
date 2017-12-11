class MusicController < ApplicationController
  def index
    @songs = Song.order(:rank)
  end
end
