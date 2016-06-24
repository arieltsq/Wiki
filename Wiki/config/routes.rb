Rails.application.routes.draw do


  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  resources :users
  resources :photo_galleries
   #where the page will lead to when there's nothing to do

  root'users#index'
  get '/index', to: "snoopies#index" #how edit the url to look like it's from /legal
  get '/about', to: "static#about"
  get '/faq', to: "static#faq"
  get '/login', to: 'sessions#new'

  delete 'logout', to: 'sessions#destroy'
    resources :sessions, only: [:create]
  #
  # # get '/characters', to: "snoopy#show"
  #   get '/snoopy/:id', to: "snoopy#characters", as: "snoopy"
    # get'/new', to: "snoopy#new"
    resources :snoopies

      # get '/snoopy/2', to: "snoopy#characters2"
  # get '/characters', to: "static#characters"
  # get 'static/about'
  # get 'static/index'

  # get 'static/characters'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
