class Authorship < ActiveRecord::Base
  belongs_to :author
  belongs_to :submission
  
  validates :author_id, :submission_id, :presence => true
  
end
