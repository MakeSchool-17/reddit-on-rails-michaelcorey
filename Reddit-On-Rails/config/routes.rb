Rails.application.routes.draw do

  get 'subreddits/index'

  get 'subreddits', to: 'subreddits#show'

  get 'subreddits/edit'

  get 'subreddits/destroy'

  get 'subreddits/create'

  get 'posts', to: 'posts#index'

  get 'posts/show'

  get 'posts/new'

  post 'posts' => 'posts#create'


  # get 'posts/edit'
  #
  # get 'posts/destroy'

  # resources :users
  # resources :comments
  # resources :posts
  # resources :subreddits

  get 'users/new'

  get 'users' => 'users#index'

  post 'users', to: "users#create"

  get 'users/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
