Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  devise_scope :user do
    root to: "users/sessions#new"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/home', to: "home#index"
end
