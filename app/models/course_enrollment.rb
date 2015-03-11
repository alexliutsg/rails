class CourseEnrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :participant

  has_many :questionnaires
end
