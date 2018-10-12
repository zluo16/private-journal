Rails.application.routes.draw do
  get '/', to: 'client#index'
  get '/signup', to: 'client#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
    end
  end
end
