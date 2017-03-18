class ShowsController < ApplicationController
  def index
    @shows = Show.future_shows
  end
end
