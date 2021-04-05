Rails.application.routes.draw do
  resources :restaurants do
   #lister several restaurants
   collection do
    get :top
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # routes pour 1 restaurant = 1 member
  member do
    get :chef # /restaurants/:id/chef
  end
  end
end
