Rails.application.routes.draw do
  root 'todos#index'
  get 'todos/search/*tags', to: 'todos#index', as: :tag
  get 'todos/new'
  get 'todos/show'
  post 'todos/create'
  get 'todos/index'
  resources :todos, :except => [:show] do
    member do
      get 'toggle_complete'
    end
  end
end
