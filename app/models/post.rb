class Post < ApplicationRecord
    has_many :pictures, as: :imageable
    has_many :comments, dependent: :destroy
    belongs_to :destination
end    
