class Item < ApplicationRecord
  belongs_to :category
  has_many :transactions
  has_many :reviews
end
