class Post < ActiveRecord::Base
  belongs_to :author

  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category - choose from 'Fiction' or 'Non-Fiction'." }
  validates :content, length: { minimum: 100 }
end
