class Todo < ApplicationRecord
  belongs_to :list
  acts_as_list scope: :list
  validates :title, presence: true
  validates :description, presence: true
  validates :position, presence: true
end
