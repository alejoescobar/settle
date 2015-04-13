Rails.application.routes.draw do
  root to: "pages#index"
  get 'pages/index'
  get 'dashboard/index'
  get 'public/concept/:id', to: 'public#concept', as: 'public_concept'
  get 'public/user/:id', to: 'public#user', as: 'public_user'

  resources :concepts

  devise_for :users
  devise_scope :user do
    get "/login" => "devise/sessions#new"
    get "/sign_up" => "devise/registrations#new"
    # authenticated :user do
    #   root :to => 'concepts#index', as: :authenticated_root
    # end
  end
end
