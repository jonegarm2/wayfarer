class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
