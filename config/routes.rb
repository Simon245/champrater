Champrater::Application.routes.draw do

  root 'site#index'
  get 'privacy' => 'site#privacy'

end
