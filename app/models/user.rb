class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 8 }
  validates :email, presence: true,
                    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: 'Email invalid' },
                    uniqueness: { case_sensitive: false }, length: { in: 3..50 }
  validates :password, presence: true, length: { minimum: 8 }
end
