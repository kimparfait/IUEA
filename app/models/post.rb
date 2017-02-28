class Post < ActiveRecord::Base
    has_attached_file :document, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"

    validates_attachment :document, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
   
	   
    
    

	acts_as_votable
	belongs_to :user
	has_many :comments
	validates :title, :description,  presence: true 

end
