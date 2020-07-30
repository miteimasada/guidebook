Rails.application.routes.draw do
  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'

  post 'users/:id/update' => 'users#update'
  get 'users/:id/edit' => 'users#edit'
  post 'users/create' => 'users#create'
  get 'signup' => 'users#new'
  get 'users/index'
  get 'users/:id' => 'users#show'

  get 'posts/new'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/create'
  get 'posts/:id' => 'posts#show'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'

end
