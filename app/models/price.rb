class Price < ApplicationRecord
  belongs_to :hotel
  belongs_to :rent_unit
  belongs_to :stay_unit
  validates  :title, :money, presence: true
  validates  :title, length: { maximum: 100 }
end
