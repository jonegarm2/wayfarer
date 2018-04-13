class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  belongs_to :user
  belongs_to :post
  belongs_to :destination
end
