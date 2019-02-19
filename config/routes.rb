Rails.application.routes.draw do
  get 'todos/new'
  get 'todos/show'
  post 'todos/create'
  resources :todos
end
