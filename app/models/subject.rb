class Subject < ActiveRecord::Base
	has_many :subjects
	has_many :notes
end
