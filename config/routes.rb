Rails.application.routes.draw do
  namespace :admin do
    resources :posts, only: [:index, :destroy]
    resources :comments, only: [:index, :destroy]
  end
  devise_for :admin, controllers: {
    sessions:      'admin/sessions',
    passwords:     'admin/passwords'
  }
  devise_scope :user do
    #post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
   end
  devise_for :customers, controllers: {
   registrations: 'customers/registrations',
   sessions: 'customers/sessions'
  }
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
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