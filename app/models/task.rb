class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :memo, presence: true, length: 10..30
  enum status: { draft: 0, published: 1, archieved: 2 }
  scope :find_new_tasks, -> { order(created_at: :desc).limit(5) }
end
