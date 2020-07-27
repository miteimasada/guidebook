Rails.application.routes.draw do
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'

  get '/' => 'home#top'

end
