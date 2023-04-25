Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :blog_posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :projects, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Admin users have the ability to create new users or delete them
end
