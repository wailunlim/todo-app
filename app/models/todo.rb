class Todo < ApplicationRecord
  before_save { self.tag.downcase!
                self.completed = false }
  validates :title, length: { maximum: 50 }
  validates :task, presence: true
end
