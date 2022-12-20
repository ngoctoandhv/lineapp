Rails.application.routes.draw do
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  # devise_for :users, skip: :omniauth_callbacks, controllers: {registrations: :registrations}
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
end
