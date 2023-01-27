Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[index show create destroy update] do
    resources :reviews, only: %i[create]
  end

  resources :reviews, only: %i[destroy]
end
