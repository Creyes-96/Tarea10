class Car < ApplicationRecord
    validates :model, presence: true, allow_blank: false
    validates :brand, presence: true, allow_blank: false
    validates :driver_id, presence: true, allow_blank: false
    validates :code, presence: true, allow_blank: false
end
