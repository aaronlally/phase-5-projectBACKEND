class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :games, through: :reviews

    validates :username, uniqueness: true, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true
end