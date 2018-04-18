class AddDestinationRefToPost < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :destination, foreign_key: true
  end
end
