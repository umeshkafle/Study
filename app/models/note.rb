class Note < ActiveRecord::Base
	belongs_to :subject
	has_attached_file :folder
end
