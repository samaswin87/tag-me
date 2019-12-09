Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations',
    unlocks: 'users/unlocks',
  }

  devise_scope :user do
    root to: "users/sessions#new"
  end

  get '/home', to: "home#index"

  get '/profile', to: "home#show"

end
