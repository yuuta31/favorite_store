Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  root 'posts#index'

  # 管理者用
  namespace :admins do
    resources :posts
    resources :users, only: %i(index, destroy)#アカウントbanのため
  end

  # user用
  scope :users do
    resources :posts, only: %i(index, show) do
      # resources :comments, only: %i(create)
      # resources :likes, only: %i(create,destroy)
      # member do
      #   post "add", to: "clips#create"
      # end
    end
    # resources :clips, only: %i(destroy)
  end

  # vue.js用
  namespace :api do
    resources :posts, only: %i(show)
  end

  # タグ用
  get 'tags/:tag', to: 'posts#index', as: :tag

end
