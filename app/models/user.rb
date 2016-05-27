class User < ActiveRecord::Base

	acts_as_messageable
         def name 
         	firstname
         end 

         def mailboxer_email(object)
         	firstname
         end 


	has_attached_file :image, :styles => { :medium => "100x", :thumb => "100x100>" }, :default_url => "default.jpg"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :posts


end
