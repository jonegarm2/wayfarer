class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_many :pictures, as: :imageable
    has_many :preferences
    has_many :destinations, through: :preferences
end
