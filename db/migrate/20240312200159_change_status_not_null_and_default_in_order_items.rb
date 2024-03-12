class ChangeStatusNotNullAndDefaultInOrderItems < ActiveRecord::Migration[7.0]
  def change
    change_column :order_items, :status, :integer, default: 0, null: false
  end
end
