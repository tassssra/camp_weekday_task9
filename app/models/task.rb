class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :memo, presence: true, length: 10..30
end
