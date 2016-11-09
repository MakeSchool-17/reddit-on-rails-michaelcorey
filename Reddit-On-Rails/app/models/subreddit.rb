class Subreddit < ApplicationRecord

  belongs_to :user

  has_many :posts
  validates :title, presence: true, length: {minimum: 4, maximum: 21}, uniqueness: true

end
