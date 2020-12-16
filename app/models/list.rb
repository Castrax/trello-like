class List < ApplicationRecord
  has_many :todos
  validates :name, presence: true
  validates :position, presence: true
end
