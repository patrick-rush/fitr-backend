Rails.application.routes.draw do
  resources :posts
  resources :exercises
  resources :workouts
  resources :clubs do
    resources :memberships, only: [:index], path: "/members"
  end 
  resources :memberships, only: [:create, :destroy]
  get '/current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end