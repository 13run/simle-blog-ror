Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'
  get '/' => 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :contacts, only: [:new, :create], path_names: { new: '' } 
  resources :articles do
    resources :comments, only: [:create]
  end
end
