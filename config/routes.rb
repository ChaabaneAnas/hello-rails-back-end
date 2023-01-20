Rails.application.routes.draw do
  get 'greetings/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :greetings, only:[:index] 
    end 
  end 
  # root "articles#index"
end
