Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do 
      resources :tasks, only: [:index]
    end 
  end 

  namespace :api do
    namespace :v1 do 
      resources :todo_lists, only: [:index]
    end 
  end

end
