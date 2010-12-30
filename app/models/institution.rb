class Institution < ActiveRecord::Base
  has_many :users
  has_many :authors
  
  validates :name, :presence => true, :uniqueness => true
  
  attr_accessible :name
end
