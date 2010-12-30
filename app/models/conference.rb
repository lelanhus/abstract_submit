class Conference < ActiveRecord::Base
  has_many :submissions
  
  scope :current, where("conferences.end_date > ?", Date.today)
  scope :past, where("conferences.end_date < ?", Date.today)
  scope :with_open_submissions, where("conferences.submission_deadline > ?", Time.now)
  
  validates :start_date, :end_date, :submission_deadline, :presence => true
  validates :name, :presence => true, :uniqueness => true
  
  def taking_submissions?
    Time.now > self.submission_deadline
  end
end
