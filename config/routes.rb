Rails.application.routes.draw do
  devise_for :users
  root to: 'ala_une#show'
  get 'accueil',to: 'ala_une#show'
end
