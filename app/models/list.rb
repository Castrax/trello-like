class List < ApplicationRecord
  has_many :todos, -> { order(position: :asc) }
  validates :name, presence: true
  validates :position, presence: true
end
