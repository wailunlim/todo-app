Rails.application.routes.draw do
  get 'todos/new'
  get 'todos/show'
  post 'todos/create'
  get 'todos/index'
  resources :todos do
    member do
      get 'mark_complete'
    end
  end
end
