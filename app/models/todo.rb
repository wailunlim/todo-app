class Todo < ApplicationRecord
  validates :title, length: { maximum: 50 }
  validates :task, presence: true
end
