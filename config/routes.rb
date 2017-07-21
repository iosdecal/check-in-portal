Rails.application.routes.draw do
  resources :users
  resources :checkins
  get 'users/:user_sid/checkins', :to => 'checkins#index', :as => 'user_checkins'
  root :to => 'pages#welcome'
  controller :pages do
    get :welcome
    get :login
    get :tapage
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
