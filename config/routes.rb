Rails.application.routes.draw do
  
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  mount_devise_token_auth_for 'User', at: '/api/v1/auth'

  namespace :api do
    namespace :v1 do
      resources :todos
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
