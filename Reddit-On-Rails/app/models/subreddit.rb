class Subreddit < ApplicationRecord

  validates :title, presence: true, length: {minimum: 4, maximum: 21}

end
