class Course < ActiveRecord::Base
  belongs_to :organization

  has_many :course_enrollments
end
