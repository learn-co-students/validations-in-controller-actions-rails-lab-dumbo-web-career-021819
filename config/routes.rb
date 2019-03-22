Rails.application.routes.draw do

  resources :authors, only: %i[new show create]
  resources :posts, only: %i[show edit update]

end
