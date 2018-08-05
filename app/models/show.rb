class Show < ActiveRecord::Base
  validates :where, :performance_date, :presence => true

  def beautified_date
    weekday_month = self.performance_date.strftime("%A, %B ")
    day_year = self.performance_date.strftime("%d, %Y - ")
    day_year.sub!(/^0+/,'')
    time = self.performance_date.strftime("%I:%M %p")
    time.sub!(/^0+/,'')
    weekday_month + day_year + time
  end

  scope :future_shows, -> {
    where("performance_date >= ?", Time.zone.today).order(:performance_date)
  }

end
