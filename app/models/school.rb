
class School < ActiveRecord::Base
  attr_accessible :description, :school_name, :user_id
  has_many :students
  has_many :student_schools
  has_many :feeds
  belongs_to :user
end
