Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "cons#top"
  get "top", to: "cons#top"
  get "live", to:"cons#live"
  get "travel", to:"cons#travel"
  get "otoi",to:"cons#otoi"
  get "result",to:"cons#result_get"
  post "result", to:"cons#result_post"
end
