# frozen_string_literal: true

class OrderItemsController < ApplicationController
  before_action :set_order_item, only: %i[show edit update destroy mark_as_prepared]
  def kitchen_display
    @order_items = OrderItem.pending_order_items.includes([:menu_item])
  end

  def mark_as_prepared
    @order_item.prepared!

    redirect_to kitchen_display_order_items_path, notice: 'Order item was marked as prepared'
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
