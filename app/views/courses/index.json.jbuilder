json.array!(@courses) do |course|
  json.extract! course, :id, :school_id, :course_code, :acronym, :district, :contact_person, :pic, :trainer_id, :first_lesson_date, :last_lesson_date
  json.url course_url(course, format: :json)
end
