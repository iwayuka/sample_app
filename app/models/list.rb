class List < ApplicationRecord
  attachment :image

  validates :title, presence: ture
  validates :body, presence: ture
  validates :image, presence: ture
end
