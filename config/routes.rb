Rails.application.routes.draw do
  get 'food_trucks/index'
  root 'food_trucks#index'

  resource :food_trucks do
    collection do
      get :find_closest_trucks
    end
    member do
      put :show_location
    end
  end

end
