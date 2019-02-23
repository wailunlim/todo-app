class Todo < ApplicationRecord
  acts_as_taggable
  validates :title, length: { maximum: 50 }, presence: true
  validates :task, presence: true
end
