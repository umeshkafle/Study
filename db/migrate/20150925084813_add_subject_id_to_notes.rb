class AddSubjectIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :subject_id, :integer
  end
end
