Rails.application.routes.draw do
  resources :ticket_types
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  get 'ticket/index'
  get 'ticket/new'
  get 'ticket/create'
  get 'ticket/show'
  get 'ticket/edit'
  get 'ticket/update'
  get 'ticket/destroy'
  get 'event/index'
  get 'event/new'
  get 'event/create'
  get 'event/show'
  get 'event/edit'
  get 'event/update'
  get 'event/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :tickets
  resources :places
  resources :events
  resources :user_tickets

  #root :to => 'sessions#new'

  root :to => 'events#index'

  # post '/login',   to: 'sessions#create', as: :log_in
  #delete '/log_out' => 'sessions#destroy', as: :log_out

  # get '/sign_in' => 'registrations#new', as: :registrations
  # post '/sign_in' => 'registrations#create', as: :sign_in


end
