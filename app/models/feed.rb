class Feed < ActiveRecord::Base
  attr_accessible :content, :school_id
  has_many :feed_students
  belongs_to :school
end
