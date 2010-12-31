class User < ActiveRecord::Base
  
  has_many :submissions
  has_many :conferences, :foreign_key => "poc_id"
  belongs_to :institution
    
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :intitution_id
end
