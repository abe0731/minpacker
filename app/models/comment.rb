class Comment < ApplicationRecord
  belongs_to :hotel
  validates  :name, :comment, :star,  presence: true
end
