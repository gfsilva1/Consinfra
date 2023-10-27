class Project < ApplicationRecord
	has_many :work_progresses
	has_many :suppliers, through: :work_progresses
	has_many :tasks
end
