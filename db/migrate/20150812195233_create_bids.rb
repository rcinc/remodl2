class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :bid

      t.timestamps null: false
    end
  end
end
