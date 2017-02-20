class Room < ApplicationRecord
  validates :name, presence: true

  belongs_to :office
  has_many :room_slots, dependent: :destroy
end
