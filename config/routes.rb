# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/ask'
  get 'home/answer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#ask', as: :ask
  get '/answer', to: 'home#answer'
  post '/answer', to: 'home#answer'
end
