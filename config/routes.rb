Rails.application.routes.draw do
  root to: 'articles#index'
  get 'about' => 'pages#about'
  get 'terms' => 'pages#terms'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :contacts, only: [:new, :create], path_names: { new: '' } 
  resources :articles
end
