class Task < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :memo, presence: true, length: 10..30
  validates :status, presence: true, inclusion: 0..2
  # TODO: statusを送信する前の時点で0~2しか選択できないようにしたい
  # modelのvalidatesだと↑はできなさそう…
end
