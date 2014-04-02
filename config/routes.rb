Champrater::Application.routes.draw do

  # resources :characters

  root 'site#index'

#Session
  get     'login' => 'session#new'
  post    'login' => 'session#create'
  delete  'logout' => 'session#destroy'
  get     'logout' => 'session#destroy'

#Password
  get 'reset/:code' => 'password#edit', as: :reset
  put 'reset/:code' => 'password#update'
  patch 'reset/:code' => 'password#update'

#Characters
  get 'characters' => 'characters#index', as: :characters
  post 'characters' => 'characters#rating'
  patch 'characters' => 'characters#search' #, as: :charsearch

#Site
  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'

end