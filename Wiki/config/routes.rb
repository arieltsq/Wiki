Rails.application.routes.draw do


   #where the page will lead to when there's nothing to do

  root'snoopy#index'
  get '/index', to: "snoopy#index" #how edit the url to look like it's from /legal
  get '/about', to: "static#about"
  get '/faq', to: "static#faq"

  get '/characters', to: "snoopy#show"
    get '/snoopy/:id', to: "snoopy#characters", as: "snoopy"
      # get '/snoopy/2', to: "snoopy#characters2"
  # get '/characters', to: "static#characters"
  # get 'static/about'
  # get 'static/index'

  # get 'static/characters'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
