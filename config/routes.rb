Rails.application.routes.draw do
  resources :villages
  match '/api/search/:name', :to => 'villages#matchVillage', via: :all
end
