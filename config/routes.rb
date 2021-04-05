Rails.application.routes.draw do
  #resources :restaurants do
   #lister several restaurants
   #collection do
    #get :top
  #end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # routes pour 1 restaurant = 1 member
  #member do
   # get :chef # /restaurants/:id/chef
  #end
  #end
  #

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end

    # on veut une review
    #  GET /restaurant/:restaurant_id/reviews/new -> #new
    #  POST /restaurant/:restaurant_id/reviews -> #create
end
