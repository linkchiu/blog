Rails.application.routes.draw do
  get 'static_page/home'
  get 'static_page/help'
  resources :microposts
  resources :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :articles do
    resources :comments
  end

  root 'users#index'
end
