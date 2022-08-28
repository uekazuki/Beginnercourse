Rails.application.routes.draw do
  namespace :admin do
    resources :sessions
  end
   
  devise_for :customers, controllers: {
   registrations: 'customers/registrations',
   sessions: 'customers/sessions'
  }
  root to: 'homes#top'
  scope module: :public do
    resources :posts, only: [:new, :edit, :create, :index, :show, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :post_comments, only: [:index, :create, :destroy, :new]
    end
    resource :customers, only: [:show, :edit, :update]
    resources :favorites, only: [:index]
  end
  #get :customers, to: 'resistrations#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end