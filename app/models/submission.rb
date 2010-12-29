class Submission < ActiveRecord::Base

  belongs_to :user
  
  validates :title, :presence => true, :uniqueness => { :scope => :user_id }  
  validates :user_id, :presence => true
  validates :body, :presence => true
  
  attr_accessible :title, :body
end
