Rails.application.routes.draw do

  resources :restaurants do
   resources :reviews, only: [:index, :new, :create, :show]
 end
 resources :reviews, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
