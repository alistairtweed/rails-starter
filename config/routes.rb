Rails.application.routes.draw do
  root "home#index"

  get "/manifest",       to: "rails/pwa#manifest",       as: :pwa_manifest
  get "/service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "/up",             to: "rails/health#show",        as: :rails_health_check
end
