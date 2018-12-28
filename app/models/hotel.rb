class Hotel < ApplicationRecord
  belongs_to :prefecture
  belongs_to :city
  belongs_to :station
  belongs_to :airport
  has_many_attached :images
  validates :name1, :prefecture_id, presence: true
  validates :about1, :about2, :about3, :about4, :about5, length: { maximum: 500 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :mail, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  # VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  # validates :tel, format: { with: VALID_PHONE_REGEX }
end
