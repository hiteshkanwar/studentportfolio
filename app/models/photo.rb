
class Photo < ActiveRecord::Base
  attr_accessible :user_id,:avatar,:content
  belongs_to :user
  has_many :likes
  self.per_page = 9
  
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
