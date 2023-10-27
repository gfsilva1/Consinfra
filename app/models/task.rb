class Task < ApplicationRecord
  belongs_to :projects
  belongs_to :suppliers
  has_one_attached :photo
end
