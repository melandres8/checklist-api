class Task < ApplicationRecord
  belongs_to :checklist

  validates_presence_of :name
end
