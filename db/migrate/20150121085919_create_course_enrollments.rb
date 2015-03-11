class CreateCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
      t.integer :course_id
      t.integer :participant_id

      t.timestamps
    end
  end
end
