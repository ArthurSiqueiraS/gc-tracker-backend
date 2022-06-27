Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :chars, only: [:index] do    
    member do
      post 'mark_challenge' => 'chars#mark_challenge'
    end
  end

  resources :challenges, only: [:index]
end
