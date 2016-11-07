class User < ApplicationRecord

    validates :username, presence: true, length: {minimum: 3, maximum: 15}

    VALID_EMAIL_REGEX = /[^@]+@[^@]+/
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

    validates :password, presence: true, length: {minimum: 6, maximum: 20}
end
