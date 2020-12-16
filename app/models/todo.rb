class Todo < ApplicationRecord
  belongs_to :list
  validates :title, presence: true
  validates :description, presence: true
  validates :position, presence: true
end
