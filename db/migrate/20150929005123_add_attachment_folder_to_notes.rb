class AddAttachmentFolderToNotes < ActiveRecord::Migration
  def self.up
    change_table :notes do |t|
      t.attachment :folder
    end
  end

  def self.down
    remove_attachment :notes, :folder
  end
end
