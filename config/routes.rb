Rails.application.routes.draw do


  devise_for :users,skip:[:passwords],controllers: {
    sessions:      'user/sessions',
    registrations: 'user/registrations',
    passwords: 'users/passwords'
  }
  scope module: :user do
    root to: "homes#top"
    get "/about" => "homes#about"
    get 'news/index'
    get "news/data"

    resources :areas,only:[:index,:show,:new]

    resources :toilets,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :toilet_comments,only:[:create,:destroy]
      resources :toilet_reviews,only:[:create]
      resource :favorites,only:[:create,:destroy]
    end
    resources :buildings,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :building_comments,only:[:create,:destroy]
      resources :building_reviews,only:[:create]
      resource :building_favorites,only:[:create,:destroy]
    end

    resources :shops,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :shop_comments,only:[:create,:destroy]
      resources :shop_reviews,only:[:create]
      resource :shop_favorites,only:[:create,:destroy]
    end

    resources :users,only:[:show,:edit,:update]
  end

  devise_scope :user do
    post 'users/guest_sign_in', to: 'user/sessions#guest_sign_in'
  end

  namespace :admin do
    root to: "homes#top"
    resources :areas,only:[:index,:show]
    resources :toilets,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :toilet_comments,only:[:destroy]
    end
    resources :buildings,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :building_comments,only:[:destroy]
    end
    resources :shops,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :shop_comments,only:[:destroy]
    end
  end

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: 'admin/sessions'
  }
end
