Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "home/about" => "homes#about"
  resources :users, only:  [:index,:create,:show,:edit,:update] 
  resources :books, only:  [:index,:create,:show,:edit,:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
