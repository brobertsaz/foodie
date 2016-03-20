Rails.application.routes.draw do
  get 'pages/index'
  root 'pages#index'

  resource :pages do
    collection do
      get :find_closest_trucks
    end
  end

end
