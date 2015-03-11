json.array!(@questionnaires) do |questionnaire|
  json.extract! questionnaire, :id, :type, :course_enrollment_id, :qns_1, :qns_2, :qns_3, :qns_4, :qns_5, :qns_6, :qns_7, :qns_8, :qns_9
  json.url questionnaire_url(questionnaire, format: :json)
end
