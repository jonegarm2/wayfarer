class Destination < ApplicationRecord
    has_many :pictures
    has_many :preferences, dependent: :destroy
    has_many :users, through: :preferences
end
