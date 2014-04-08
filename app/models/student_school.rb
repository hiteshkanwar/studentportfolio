class StudentSchool < ActiveRecord::Base
  attr_accessible :school_id, :status, :student_id
  belongs_to :school
  belongs_to :student
end
