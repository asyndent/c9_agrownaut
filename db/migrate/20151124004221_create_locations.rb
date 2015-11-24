class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.timestamps null: false
      t.string :name
      t.text :description
    end
  end
end
