class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|

      t.timestamps null: false
      t.integer :customer_id
      t.string :sensor_model
      t.integer :location_id
    end
  end
end
