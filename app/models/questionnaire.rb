class Questionnaire < ActiveRecord::Base
  belongs_to :course_enrollment
end
