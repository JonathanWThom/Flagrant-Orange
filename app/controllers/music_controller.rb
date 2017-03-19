class MusicController < ApplicationController
  def index
    @songs = Song.all
  end
end
