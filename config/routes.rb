Rails.application.routes.draw do

  resources :order_items
  resources :menu_items
  resources :orders

  get '/kitchen_display' => 'order_items#kitchen_display', as: :kitchen_display
  post '/mark_item_as_prepared' => 'order_items#mark_item_as_prepared', as: :mark_item_as_prepared
end
