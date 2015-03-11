class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :program_cycle_id
      t.integer :organization_id
      t.string :pitching_status
      t.text :pitching_remarks
      t.string :program_status
      t.text :program_remarks

      t.timestamps
    end
  end
end
