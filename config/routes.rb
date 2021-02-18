Rails.application.routes.draw do
  devise_for :users
  get 'home/realestates'
  get 'home/index'
  get 'home/bills'
  get 'home/download_zip'
  root 'home#index'
  resources :flats
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
