class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.decimal :payment_rate
      t.string :club_represented
      t.text :qualification
      t.string :email
      t.string :mobile
      t.string :home_district
      t.string :work_district
      t.string :status
      t.text :note

      t.timestamps
    end
  end
end
