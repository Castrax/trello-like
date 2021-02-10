Rails.application.routes.draw do
  root 'pages#home'
  resources :todos do
    member do
      patch :move
    end
  end
  devise_for :users
  get '/user' => "todos#index", :as => :user_root
end
