Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  resources :lists do
    resources :bookmarks, only: [:new, :create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
