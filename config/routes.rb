Rails.application.routes.draw do
  # resources :counts
  resources :comments
  resources :images
  resources :prices
  resources :hotels
  # resources :airports
  # resources :stations
  # resources :cities
  # resources :prefectures
  # resources :stay_units
  # resources :rent_units
  # resources :infomations
  # get 'admin/index'
  get 'welcome/index'
  get 'welcome/prefecture_search'
  get 'welcome/city_search'
  get 'welcome/hotel_search'
  # get 'entry/index'

  root 'welcome#index'

  post '/hotels/:id', to: 'comments#create'
end
