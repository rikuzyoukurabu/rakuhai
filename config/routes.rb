Rails.application.routes.draw do



  namespace :admin do
    root to: "homes#top"
  end

  scope module: :user do
    root to: "homes#top"
    get "/about" => "homes#about"

    resources :areas,only:[:index,:show,:new]

    resources :toilets,only:[:index,:show,:new,:create,:edit,:update,:destroy] do
      resources :toilet_comments,only:[:create,:destroy]
      resource :favorites,only:[:create,:destroy]
    end
    resources :buildings,only:[:index,:show,:new,:create,:edit,:update,:destroy]

    resources :shops,only:[:index,:show,:new,:create,:edit,:update,:destroy]


  end

  devise_scope :user do
    post 'users/guest_sign_in', to: 'user/sessions#guest_sign_in'
  end

  devise_for :users,skip:[:passwords],controllers: {
    sessions:      'user/sessions',
    registrations: 'user/registrations',
    passwords: 'users/passwords'
  }

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: 'admin/sessions'
  }
end
