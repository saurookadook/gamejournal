Rails.application.routes.draw do
  # Override Devise controllers here:
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users do
    resources :owned_games, controller: :games
  end

  resources :platforms
  resources :games
  
  root 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
