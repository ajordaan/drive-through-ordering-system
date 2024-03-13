# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy mark_as_paid]

  # GET /orders/new
  def new
    @order = Order.new
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    if menu_item_ids_params.blank?
      @order.errors.add(:base, 'At least one menu item must be selected')
      render :new, status: :unprocessable_entity and return
    end

    menu_item_ids_params.each do |menu_item|
      @order.order_items.build(menu_item_id: menu_item)
    end

    respond_to do |format|
      if @order.save
        format.html { redirect_to new_order_path, notice: 'Order was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def ready_for_pickup
    @orders = Order.ready_for_pickup.includes([:menu_items])
  end

  def mark_as_paid
    @order.paid!

    redirect_to ready_for_pickup_orders_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  def menu_item_ids_params
    params[:menu_item_ids] || []
  end

  def order_params
    params.require(:order).permit(:vehicle_registration_number)
  end
end
