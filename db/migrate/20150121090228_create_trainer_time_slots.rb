class CreateTrainerTimeSlots < ActiveRecord::Migration
  def change
    create_table :trainer_time_slots do |t|
      t.integer :trainer_id
      t.date :date
      t.string :start_time
      t.string :end_time
      t.string :status
      t.text :remarks

      t.timestamps
    end
  end
end
