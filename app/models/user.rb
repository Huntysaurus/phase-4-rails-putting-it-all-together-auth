class User < ApplicationRecord
    gem 'bcrypt'
    validates :username, presence: true, uniqueness: true
    validates :password_digest, presence: true, uniqueness: true
    has_many :recipes
    has_secure_password
end
