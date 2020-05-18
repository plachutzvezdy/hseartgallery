Rails.application.routes.draw do
  resources :events
  get 'gallery/index'
  resources :curator_of_exhibitions
  resources :curators
  resources :artworks
  resources :exhibitions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "gallery#index"
end
