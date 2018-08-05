class ShowsController < ApplicationController
  def index
    @shows = Show.future_shows
    @past_shows = Show.past_shows
  end
end
