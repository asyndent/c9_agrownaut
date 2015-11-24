class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|

      t.timestamps null: false
      t.integer :customer_id
      t.integer :sensor_id
      t.string :message
      
    end
  end
end
