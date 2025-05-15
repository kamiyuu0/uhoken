Rails.application.routes.draw do
  resources :question, only: %i[show update]
  root "static_pages#top"
  get "result/:id", to: "static_pages#result", as: "result"
end
