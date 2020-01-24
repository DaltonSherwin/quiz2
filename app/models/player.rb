class Player < ApplicationRecord
    validates :name, presence: true, length: { maximum: 140, minimum: 3 }
    validates :position, presence: true, length: { maximum: 140, minimum: 1 }

end
