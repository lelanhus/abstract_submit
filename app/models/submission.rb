class Submission < ActiveRecord::Base

  belongs_to :user
  
  has_many :authorships
  has_many :authors, :through => :authorships
  
  has_attached_file :image
  validates :title, :presence => true, :uniqueness => { :scope => :user_id }  
  validates :user_id, :presence => true
  validates :body, :presence => true
  validates_attachment_size :image, :less_than => 4.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  
  attr_accessible :title, :body, :image
  
  def has_image?
    self.image_file_name.nil?
  end
end
