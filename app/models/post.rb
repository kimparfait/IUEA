class Post < ActiveRecord::Base
    has_attached_file :document, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
    validates_attachment_content_type :document, :content_type => /\Aimage\/.*\Z/
    

	 acts_as_votable
	belongs_to :user
	has_many :comments
	validates :title, :description,  presence: true 
end
