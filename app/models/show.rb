class Show < ActiveRecord::Base
  validates :where, :when, :presence => true
end
