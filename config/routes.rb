Rails.application.routes.draw do
  get "question/show"
  root "static_pages#top"
  get "result", to: "static_pages#result"
end
