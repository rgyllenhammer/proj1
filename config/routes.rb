Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers

  patch '/capture/:id', to: "pokemons#capture", as: 'capture'
  patch '/damage/:id', to: "pokemons#damage", as: 'damage'

  get '/pokemon/new', to: "pokemons#new"
  post '/new', to: "pokemons#add_pokemon", as: "create_pokemon"



end
