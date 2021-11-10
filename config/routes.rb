Rails.application.routes.draw do
  resources :gardens
  root to:"gardens#index"

  resources :gardens do
    resources :plants, only: [:new, :create]
  end
  resources :plants, only: [:destroy]
end
