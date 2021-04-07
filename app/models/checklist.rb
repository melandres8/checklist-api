class Checklist < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates_presence_of :name, :created_by
end
