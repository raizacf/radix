Rails.application.routes.draw do
  get 'news/new'

  get 'sessions/new'

  get 'users/new'

  get 'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'

  get  '/new_user', to: 'users#new'
  get  '/users', to: 'users#index'
  root 'static_pages#home'
  post '/new_user',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

end
