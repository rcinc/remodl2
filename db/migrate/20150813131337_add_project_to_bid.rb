class AddProjectToBid < ActiveRecord::Migration
  def change
    add_reference :bids, :project, index: true, foreign_key: true
  end
end
