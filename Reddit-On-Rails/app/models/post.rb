class Post < ApplicationRecord
    belongs_to :user
    belongs_to :subreddit
    has_many :comments
 
    validates :title, presence: true, length: {minimum: 4, maximum: 140}
    validates :content, presence: true, length: {minimum: 10, maximum: 10000}
end
