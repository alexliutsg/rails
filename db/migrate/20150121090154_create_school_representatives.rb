class CreateSchoolRepresentatives < ActiveRecord::Migration
  def change
    create_table :school_representatives do |t|
      t.integer :school_id
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end
end
