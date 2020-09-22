Rails.application.routes.draw do
  resources :deck_cards
  resources :cards
  resources :decks
  resources :players
  get "decks/:id/addcard", to: "decks#addcard"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
