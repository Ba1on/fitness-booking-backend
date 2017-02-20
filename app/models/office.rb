class Office < ApplicationRecord
  validates :address, presence: true, uniqueness: true

  has_many :rooms, dependent: :destroy
end