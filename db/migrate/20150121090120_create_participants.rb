class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :school_id
      t.string :name
      t.string :email
      t.string :mobile
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
