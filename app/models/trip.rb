class Trip < ApplicationRecord
    has_many :locations
    has_many :reviews
end
