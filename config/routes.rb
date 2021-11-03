Rails.application.routes.draw do



  namespace :admin do
    root to: "homes#top"
  end

  scope module: :user do
    root to: "homes#top"
    get "/about" => "homes#about"

    resources :areas,only:[:index,:show,:new]

    resources :toilets,only:[:index,:show,:new,:create] 
   
    resources :buildings,only:[:index,:show,:new]
 
    resources :shops,only:[:index,:show,:new] 
 

  end

  devise_for :users,skip:[:passwords],controllers: {
    sessions:      'user/sessions',
    registrations: 'user/registrations'
  }

  devise_for :admin, skip: [:registrations, :passwords],controllers: {
    sessions: 'admin/sessions'
  }
end
