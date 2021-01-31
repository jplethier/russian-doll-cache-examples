Rails.application.routes.draw do
  resources :books, only: %i[show index]
  resources :authors, only: %i[show index]
end
