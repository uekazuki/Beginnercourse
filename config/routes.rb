Rails.application.routes.draw do
  namespace :admin do
    resources :sessions
  end
  namespace :public do
    resources :post_comments
  end
  namespace :public do
    resources :posts
  end
  namespace :public do
    resources :customers
  end
  namespace :public do
    resources :favorites
  end
  resources :homes
  root to: 'homes#top'
  
  devise_for :customers, controllers: {
   registrations: 'customers/registrations',
   sessions: 'customers/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end