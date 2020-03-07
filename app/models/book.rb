class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
  validates :title, presence: true
  validates :author, presence: true
  validates :total_books, presence: true
  validates :cost_day, presence: true
end
