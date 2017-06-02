class Post < ActiveRecord::Base

  validates_presence_of :title
  validates_length_of :content, minimum: 100
  validates_inclusion_of :category, in: %w( Fiction Non-Fiction )
  # validates :category, inclusion: %w(Fiction Non-Fiction)

end
