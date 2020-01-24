class Skol < ApplicationRecord
  validates :player, presence: true, length: { maximum: 140, minimum: 3 }
  validates :position, presence: true, length: { maximum: 50, minimum: 2 }
end
