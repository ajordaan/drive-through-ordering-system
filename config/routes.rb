Rails.application.routes.draw do

  root "home#index"

  resources :order_items
  resources :menu_items
  resources :orders do
    get '/ready_for_pickup' => 'orders#ready_for_pickup', as: :ready_for_pickup, on: :collection
    post '/mark_as_paid' => 'orders#mark_as_paid', as: :mark_as_paid, on: :member
  end

  get '/kitchen_display' => 'order_items#kitchen_display', as: :kitchen_display
  post '/mark_item_as_prepared' => 'order_items#mark_item_as_prepared', as: :mark_item_as_prepared


end
