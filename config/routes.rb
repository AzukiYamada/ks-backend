Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[index]
  get '/restaurants/:id', to: 'restaurants#show'
end
