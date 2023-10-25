class Project < ApplicationRecord
	has_many :suppliers
	has_many :work_progresses
end
