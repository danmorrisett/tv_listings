Rails.application.routes.draw do
root to: "welcome#index"
resources :channels, only: [:index, :new, :create, :edit, :update]
resources :shows, only: [:index, :new, :create, :edit, :update, :show]
resources :show_listings
end
