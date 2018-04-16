class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.attachment :image
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true
      t.references :destination, foreign_key: true

      t.timestamps
    end
  end
end