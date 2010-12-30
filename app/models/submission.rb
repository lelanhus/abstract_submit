class Submission < ActiveRecord::Base

  belongs_to :user
  
  has_many :authorships
  has_many :authors, :through => :authorships
  
  has_attached_file :image, :storage => ENV['S3_BUCKET'] ? :s3 : :filesystem, 
                    :s3_credentials => {
                      :access_key_id => ENV['S3_KEY'],
                      :secret_access_key => ENV['S3_SECRET']
                    },
                    :bucket => ENV['S3_BUCKET'] #,
                    #:path => "/:attachment/:id/:style/:filename", 
                    #:styles => { :publishable => "500x500>" } 
  
  validates :title, :presence => true, :uniqueness => { :scope => :user_id }  
  validates :user_id, :presence => true
  validates :body, :presence => true
  validates_attachment_size :image, :less_than => 4.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  validates :state, :presence => true
    
  attr_accessible :title, :body, :image
  
  state_machine :initial => :awaiting_authors do
    
    event :author_added do
      transition :to => :pending_submission, :from => [:awaiting_authors]
    end

    event :submit do
      transition :to => :submitted, :from => [:pending_submission]
    end
    
    event :approve do
      transition :to => :approved, :from => [:submitted]
    end
    
    event :denied do
      transition :to => :denied, :from => [:submitted]
    end
  end
end
