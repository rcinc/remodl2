class AddMainToProject < ActiveRecord::Migration
  def up
    add_attachment :projects, :main
  end

  def down
    remove_attachment :projects, :main
  end
end
