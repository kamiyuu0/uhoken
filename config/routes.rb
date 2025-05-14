Rails.application.routes.draw do
  resources :question, only: %i[show]
  root "static_pages#top"
  get "result", to: "static_pages#result"
end
