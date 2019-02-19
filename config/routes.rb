Rails.application.routes.draw do
  get 'todos/new'
  get 'todos/show'
  resources :todos
end
