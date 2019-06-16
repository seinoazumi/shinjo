Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'restaurants#index'
  resources :restaurants, only: [:index, :edit, :show] do
    resources :comments, only: [:create, :destroy, :new]
  end

  namespace :admin do
    resources :restaurants, only: [:index, :new, :create, :show,  :edit, :destroy]
  end
end
