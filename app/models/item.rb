class Item < ApplicationRecord
  belongs_to :category
  has_many :transactions, dependent: :destroy
  has_many :reviews, dependent: :destroy

  belongs_to :user

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: :name,
    using: {
      tsearch: { prefix: true }
    }
end
