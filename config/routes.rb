# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: %i[index show create destroy update] do
    scope module: :restaurants do
      resources :reviews, only: %i[create]
    end
  end

  resources :reviews, only: %i[destroy]
  resources :holidays, only: %i[index]
end
