# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_items
  has_many :menu_items, through: :order_items

  validates :vehicle_registration_number, presence: true

  enum :status, %i[pending paid]

  scope :ready_for_pickup, lambda {
                             where(status: :pending)
                               .where
                               .not(id: OrderItem.where.not(status: :prepared)
                               .select(:order_id))
                           }

  def total
    menu_items.sum(:price)
  end
end
