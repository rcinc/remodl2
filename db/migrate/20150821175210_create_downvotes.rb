class CreateDownvotes < ActiveRecord::Migration
  def change
    create_table :downvotes do |t|
      t.integer :profile_id

      t.timestamps null: false
    end
  end
end
