json.array!(@course_enrollments) do |course_enrollment|
  json.extract! course_enrollment, :id, :course_id, :participant_id
  json.url course_enrollment_url(course_enrollment, format: :json)
end
