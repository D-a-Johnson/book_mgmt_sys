class UserBook < ApplicationRecord
  belongs_to :book
  belongs_to :user
  validates :checkout_date, presence: true
end
