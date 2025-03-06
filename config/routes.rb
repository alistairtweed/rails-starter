Rails.application.routes.draw do
  root "home#index"

  get "/", to: "home#index", as: :home

  get "/docs", to: "documentation#index", as: :documentation if Rails.env.development?
end
