class Show < ActiveRecord::Base
  validates :where, :when, :presence => true

  def beautified_date
    self.when.strftime("%A, %B %d, %Y - %I:%M %p")
  end

  # scope :future_shows, -> {
  #   where("'when' >= ?", Time.zone.now).order(:when)
  #   ## this is not actually working
  # }

  def self.future_shows
    shows = []
    self.all.each do |show|
      if show.when > Time.zone.now
        shows.push(show)
      end
    end
    shows
  end

end
