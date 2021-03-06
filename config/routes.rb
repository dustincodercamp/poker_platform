Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :lessons, only: [:index, :show] do
    resources :exercises, only: [:index]
  end

  post 'answers/:answer_id', to: 'exercises#answer', as: 'answer'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
