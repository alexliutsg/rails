class CreateProgramCycles < ActiveRecord::Migration
  def change
    create_table :program_cycles do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :goal
      t.text :description

      t.timestamps
    end
  end
end
