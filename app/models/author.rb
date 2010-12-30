class Author < ActiveRecord::Base
  
  belongs_to :institution
  
  has_many :authorships
  has_many :submissions, :through => :authorships
  
  validates :full_name, :presence => true
  validates :email, :presence => true, :uniqueness => true, :email_format => true
  validates :institution_id, :presence => true
  
  def full_name
    [first_name, last_name].join(' ')
  end
  
  def full_name=(name)
    return false if name.nil?
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end
end
