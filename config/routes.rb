Rails.application.routes.draw do
  root 'pages#home'
  resources :posts

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
    # Add other controllers as needed
  }
  
end
