Rails.application.routes.draw do



  namespace :admin do
    root to: "homes#top"
  end

  scope module: :user do
    root to: "homes#top"
    get "/about" => "homes#about"

    resources :areas,only:[:index,:show]

    resources :toilets,only:[:index,:show] do
      resources :comments, only: [:create, :destroy]
    end
    resources :buildings,only:[:index,:show ]do
      resources :comments, only: [:create, :destroy]
    end
    resources :shops,only:[:index,:show] do
      resources :comments, only: [:create, :destroy]
    end

  end

  devise_for :users,skip:[:passwords],controllers: {
    sessions:      'user/sessions',
    registrations: 'user/registrations'
  }

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: 'admin/sessions'
  }
end
