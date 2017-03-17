class ShowsController < ApplicationController
  def index
    @shows = Show.all
  end


  ##only show shows in the future
end
