class AddDeactivateToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :deactivate, :boolean
  end
end
