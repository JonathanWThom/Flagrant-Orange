class Show < ActiveRecord::Base
  validates :where, :when, :presence => true

  def beautified_date
    weekday_month = self.when.strftime("%A, %B ")
    day_year = self.when.strftime("%d, %Y - ")
    day_year.sub!(/^0+/,'')
    time = self.when.strftime("%I:%M %p")
    time.sub!(/^0+/,'')
    weekday_month + day_year + time
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
    shows.sort! { |a,b| a.when <=> b.when }
  end

end
