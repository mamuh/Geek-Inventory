class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :items, through: :transactions
  has_many :reviews
  has_many :transactions, dependent: :destroy

  validates :name, presence: true
  validates :role, presence: true
end
