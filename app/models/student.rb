class Student < ActiveRecord::Base
  attr_accessible :description, :school_id, :user_id
  has_many :student_schools
  belongs_to :school
  belongs_to :user
  belongs_to :feed
  has_many :feed_students
end
