class Destination < ApplicationRecord
    has_many :pictures
    has_many :preferences
    has_many :users, through: :preferences
end
