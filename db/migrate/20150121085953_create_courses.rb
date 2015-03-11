class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :school_id
      t.string :course_code
      t.string :acronym
      t.string :district
      t.integer :contact_person
      t.integer :pic
      t.integer :trainer_id
      t.date :first_lesson_date
      t.date :last_lesson_date

      t.timestamps
    end
  end
end
