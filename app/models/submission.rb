class Submission < ActiveRecord::Base

  belongs_to :user
  
  has_many :authorships
  has_many :authors, :through => :authorships
  
  validates :title, :presence => true, :uniqueness => { :scope => :user_id }  
  validates :user_id, :presence => true
  validates :body, :presence => true
  
  attr_accessible :title, :body
end
