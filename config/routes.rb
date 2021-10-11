Rails.application.routes.draw do
  resources :messages
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

      resources :images do
        get :get_pictures, on: :collection
      end

      resources :messages do
        get :get_all, on: :collection
        post :set_message, on: :collection
      end
    end
  end

end
