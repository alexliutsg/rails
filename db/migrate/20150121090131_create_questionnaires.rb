class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :type
      t.integer :course_enrollment_id
      t.string :qns_1
      t.string :qns_2
      t.string :qns_3
      t.string :qns_4
      t.string :qns_5
      t.string :qns_6
      t.string :qns_7
      t.string :qns_8
      t.text :qns_9

      t.timestamps
    end
  end
end
