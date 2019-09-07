class Address < ApplicationRecord
  belongs_to :location
  has_many :locations, dependent: :destroy
end
