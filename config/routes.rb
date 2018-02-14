Rails.application.routes.draw do
  get 'comment/index'

  get 'comment/new'

  devise_for :users 
  resources :user, only: [] do  
    get 'profile', on: :member
  end
  root 'projects#index'
  # get 'projects' => 'project#show'
  #  get '/project/new' => 'project#new'
  # post 'project' => 'project#create'
  # resources :posts
  
  resources :projects do
    resources :todos
    resources :comments
  end

  resources :groups
  resources :user_groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end