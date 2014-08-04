Crm::Application.routes.draw do
 root 'leads#index'

  resources :clients do
    get :change_status, on: :member
    resources :comments
    resources :tasks, on: :member
  end

  resources :users
  resources :accounts
  resources :landings
  resources :statuses

  resources :authentications, only: [:index, :create] do
    get :logout, on: :collection
  end
end

