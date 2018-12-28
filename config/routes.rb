Rails.application.routes.draw do
  get 'entry/index'
  resources :counts
  resources :comments
  resources :images
  resources :prices
  resources :hotels
  resources :airports
  resources :stations
  resources :cities
  resources :prefectures
  resources :stay_units
  resources :rent_units
  resources :infomations
  get 'admin/index'
  get 'welcome/index'
  get 'welcome/prefecture_search'
  get 'welcome/city_search'
  get 'welcome/hotel_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  post '/hotels/:id', to: 'comments#create'
end
