Rails.application.routes.draw do
  get 'home/index'
  resources :documents
  resources :images
  root "home#index"

  namespace :api do
    namespace :v1 do
      resources :documents do
        get :get_all, on: :collection
        post :login, on: :collection
      end
      resources :images
    end
  end

end
