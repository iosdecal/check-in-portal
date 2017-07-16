Rails.application.routes.draw do
  resources :users
  resources :checkins
  get 'users/:user_sid/checkins', :to => 'checkins#index', :as => 'user_checkins'
  get 'welcome', :to => 'welcome#welcome'
  root :to => 'welcome#welcome'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
