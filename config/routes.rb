Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'restaurants'

  # get 'restaurants/new'
  # post 'restaurants'

  # get 'restaurants/member'

  # get 'restaurants/member/reviews/new'
  # post 'restaurants/member/reviews'

  root to: 'restaurants#index'

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
