class Post < ApplicationRecord
    has_many :pictures, as: :imageable
    has_many :comments, dependent: :destroy
    after_initialize :set_defaults

    def set_defaults
        if self.upvotes.nil?
            self.upvotes = 0
        end
    end
end    
