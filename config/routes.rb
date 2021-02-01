Rails.application.routes.draw do
 resources :argonautes, only: [:index, :create]
 root to: "argonautes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
