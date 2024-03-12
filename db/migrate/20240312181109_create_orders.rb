class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :vehicle_registration_number
      t.integer :status

      t.timestamps
    end
  end
end
