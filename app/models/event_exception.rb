class EventException < ApplicationRecord
  belongs_to :event

  validates :time, presence: true
end
