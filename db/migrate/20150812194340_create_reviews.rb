class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :reviews

      t.timestamps null: false
    end
  end
end
