Rails.application.routes.draw do
  get 'todos/search/*tags', to: 'todos#index', as: :tag
  get 'todos/new'
  get 'todos/show'
  post 'todos/create'
  get 'todos/index'
  resources :todos do
    member do
      get 'toggle_complete'
    end
  end
end
