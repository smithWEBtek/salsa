Rails.application.routes.draw do
  resources :charts
  resources :audios
  resources :songs
  root 'songs#index'
end
