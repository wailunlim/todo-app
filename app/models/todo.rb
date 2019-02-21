class Todo < ApplicationRecord
  acts_as_taggable
  before_save { self.tag.downcase! }
  validates :title, length: { maximum: 50 }
  validates :task, presence: true
end
