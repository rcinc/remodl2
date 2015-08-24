class AddAttachmentToProfile < ActiveRecord::Migration
  def up
    add_attachment :profiles, :attachment
  end

  def down
    remove_attachment :profiles, :attachment
  end
end
