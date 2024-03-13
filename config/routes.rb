# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  resources :order_items do
    get '/kitchen_display' => 'order_items#kitchen_display', as: :kitchen_display, on: :collection
    post '/mark_as_prepared' => 'order_items#mark_as_prepared', as: :mark_as_prepared, on: :member
  end
  resources :orders do
    get '/ready_for_pickup' => 'orders#ready_for_pickup', as: :ready_for_pickup, on: :collection
    post '/mark_as_paid' => 'orders#mark_as_paid', as: :mark_as_paid, on: :member
  end
  resources :menu_items
end
