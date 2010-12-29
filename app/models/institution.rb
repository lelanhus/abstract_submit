class Institution < ActiveRecord::Base
  has_many :users
  
  validates :name, :presence => true, :uniqueness => true
  
  attr_accessible :name
end
