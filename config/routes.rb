Rails.application.routes.draw do
  resources :heros
  resources :villains
  get "/heroes_and_villains", to: "heros#get_hero_and_villain_data"
  post "/submit_score", to: "scores#create"
  get "/scores", to: "scores#all"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
