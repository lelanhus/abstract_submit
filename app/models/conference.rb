class Conference < ActiveRecord::Base
  has_many :submissions
  
  validates :start_date, :end_date, :presence => true
  validates :name, :presence => true, :uniqueness => true
end
