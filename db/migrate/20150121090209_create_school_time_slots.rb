class CreateSchoolTimeSlots < ActiveRecord::Migration
  def change
    create_table :school_time_slots do |t|
      t.integer :school_id
      t.date :date
      t.string :start_time
      t.string :end_time
      t.string :status
      t.text :remarks

      t.timestamps
    end
  end
end
