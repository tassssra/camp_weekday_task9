Rails.application.routes.draw do
  root "tasks#index"
  get "/tasks/hide" => "tasks#hide"
  resources :tasks
end