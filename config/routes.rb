Rails.application.routes.draw do
  get 'posts/new' => 'posts#new'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/create' => 'posts#create'

  get 'posts/:id' => 'posts#show'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  get '/' => 'home#top'

end
