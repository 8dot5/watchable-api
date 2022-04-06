Rails.application.routes.draw do
  resources :services
  resources :categories
  resources :watchables
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # route to test your configuration
  # test route:  http://localhost:3000/hello
  # package.json has proxy localhost:3000 added. this should be removed for deployment?
  # reference: https://github.com/learn-co-curriculum/react-rails-project-setup-guide#react-setup
  get '/hello', to: 'application#hello_world'

  # get '*path',
  #     to: 'fallback#index',
  #     constraints: ->(req) { !req.xhr? && req.format.html? }

  # login
  post '/login', to: 'sessions#create'

  # logout
  delete '/logout', to: 'sessions#destroy'

  # auto-login
  get '/me', to: 'users#show'
end
