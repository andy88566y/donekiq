class Mission < ApplicationRecord
  validates :title, presence: true
  validates :end_time, presence: true
  validates_inclusion_of :priority, in: ["Urgent", "Medium", "Low"]
end
