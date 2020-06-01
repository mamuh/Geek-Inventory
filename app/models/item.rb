class Item < ApplicationRecord
  belongs_to :category
  has_many :transactions
  has_many :reviews

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

  has_one_attached :photo
end
