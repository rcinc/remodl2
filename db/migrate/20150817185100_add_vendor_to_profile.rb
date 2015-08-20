class AddVendorToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :vendor, :boolean
    add_column :profiles, :company, :string
    add_column :profiles, :address, :string
    add_column :profiles, :phone, :string
    add_column :profiles, :license_type, :string
    add_column :profiles, :license_number, :string
  end
end
