class Note < ActiveRecord::Base
	belongs_to :subject
	has_attached_file :folder
	validates_attachment :folder, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	end
