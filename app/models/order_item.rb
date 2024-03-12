# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :menu_item

  enum :status, %i[pending prepared]
end
