class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
  validates :item_id, presence: true
end
