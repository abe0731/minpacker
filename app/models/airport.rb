class Airport < ApplicationRecord
  belongs_to :prefecture
  belongs_to :city
end
