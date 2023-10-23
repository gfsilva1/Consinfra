class WorkProgress < ApplicationRecord
  belongs_to :project
  belongs_to :supplier
end
