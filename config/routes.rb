Rails.application.routes.draw do
  get 'posts/new' => 'posts#new'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/create' => 'posts#create'

  get 'posts/:id' => 'posts#show'
  post 'posts/:id/update' => 'posts#update'
  get '/' => 'home#top'

end
