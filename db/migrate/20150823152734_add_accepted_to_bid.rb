class AddAcceptedToBid < ActiveRecord::Migration
  def change
    add_column :bids, :accepted, :boolean, default: false
  end
end
