Rails.application.routes.draw do
  root to: 'ala_une#show'
  get 'accueil',to: 'ala_une#show'
end
