class Driver < ApplicationRecord
    validates :name, presence: false, allow_blank: false
end
