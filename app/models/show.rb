class Show < ActiveRecord::Base
  validates :where, :when, :presence => true

  def beautified_date
    self.when.strftime("%A, %B %d, %Y - %I:%M %p")
  end
end
