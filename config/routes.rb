Rails.application.routes.draw do
  get 'exercises/show'

  get 'categories/show'

  get 'lessons/index'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
