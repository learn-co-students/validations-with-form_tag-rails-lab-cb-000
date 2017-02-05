class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_number, format: { with: /\d{10}/,
                                     message: "%{value} must be 10 digit number"}
end
