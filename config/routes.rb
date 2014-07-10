Champrater::Application.routes.draw do

  root 'site#index'

  get     'login' => 'session#new'
  post    'login' => 'session#create'
  delete  'logout' => 'session#destroy'
  get     'logout' => 'session#destroy'

  get 'privacy' => 'site#privacy'
  get 'terms' => 'site#terms'

  get 'reset/:code' => 'password#edit', as: :reset
  put 'reset/:code' => 'password#update'
  patch 'reset/:code' => 'password#update'

  get 'characters' => 'characters#index', as: :characters
  post 'characters' => 'characters#rating'
  patch 'characters' => 'characters#search' #, as: :charsearch

end