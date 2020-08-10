Rails.application.routes.draw do
  #serfiveworker configs
  get '/service-worker.js' => "service_worker#service_worker"
  get '/manifest.json' => "service_worker#manifest"

  devise_for :users
  root to: 'ala_une#show'
  get 'accueil',to: 'ala_une#show'

  resources :annonces
end