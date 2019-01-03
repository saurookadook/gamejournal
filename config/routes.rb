Rails.application.routes.draw do
  resources :platforms
  resources :games

  # Override Devise controllers here:
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users do
    resources :games
  end
  
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
