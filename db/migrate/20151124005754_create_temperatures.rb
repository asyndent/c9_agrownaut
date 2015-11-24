class CreateTemperatures < ActiveRecord::Migration
  def change
    create_table :temperatures do |t|

      t.timestamps null: false
      t.integer :temperature
      t.integer :sensor_id
      t.integer :customer_id
    end
  end
end
