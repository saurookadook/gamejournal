Rails.application.routes.draw do
  resources :platforms
  resources :games
  # devise_for :users

  # Override Devise controllers here:
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
