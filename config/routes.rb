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
    resources :posts, except: %i(new show)
    resources :users, only: %i(index destroy)#アカウントbanのため
  end

  # user用
  scope :users do
    resources :logins, only: %i(index)
    resources :users , only: %i(show)
    resources :posts , only: %i(index show) do
      collection do
        get  'search'
        post 'search'
      end
      resources :comments, only: %i(create destroy)
      resources :likes, only: %i(create destroy)
      # member do
      #   post "add", to: "clips#create"
      # end
      resources :bookmarks, only: %i(create destroy)
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
