Rails.application.routes.draw do
  resources :todo_lists
  resources :ussers
  namespace :api do
    resources :todo_list
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
