class Destination < ApplicationRecord
    has_many :pictures, as: :imageable
    has_many :preferences, dependent: :destroy
    has_many :users, through: :preferences
    has_many :posts, dependent: :destroy
end
