class Author < ActiveRecord::Base

  # validates :name, presence: true
  # validates_presence_of(:name)
  validates_presence_of :name
  validates_length_of :phone_number, minimum: 10
  validates_uniqueness_of :email

end
