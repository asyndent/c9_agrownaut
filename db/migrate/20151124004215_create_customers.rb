class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|

      t.timestamps null: false
          t.string :name
      t.text :description
    end
  end
end
