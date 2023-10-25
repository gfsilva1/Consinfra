class Supplier < ApplicationRecord
  belongs_to :project
  has_many :work_progresses
end
