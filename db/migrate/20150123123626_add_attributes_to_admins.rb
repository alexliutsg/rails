class AddAttributesToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
    add_column :admins, :title, :string
    add_column :admins, :organization, :string
    add_column :admins, :qualification, :text
    add_column :admins, :mobile, :string
    add_column :admins, :program, :string
    add_column :admins, :home_district, :string
    add_column :admins, :work_district, :string
    add_column :admins, :status, :string
    add_column :admins, :note, :text
  end
end
