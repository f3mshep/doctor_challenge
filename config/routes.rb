Rails.application.routes.draw do
  resources :doctors
  #specialties and ratings are nested within doctors
  resources :doctors do
    resources :specialties
    resources :ratings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
