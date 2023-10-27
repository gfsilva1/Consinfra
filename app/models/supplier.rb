class Supplier < ApplicationRecord
  has_many :work_progresses
  has_many :projects, through: :work_progresses
  has_many :tasks
end
