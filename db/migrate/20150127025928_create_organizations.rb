class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :region_id
      t.string :organization_type
      t.string :primary_name
      t.text :alternative_names
      t.text :address
      t.string :contact_numbers
      t.string :email
      t.string :fax_numbers
      t.string :website
      t.string :contact_persons
      t.text :remarks

      t.timestamps
    end
  end
end
