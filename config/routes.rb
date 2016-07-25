Rails.application.routes.draw do

  root 'pages#home'
  # http://ricostacruz.com/cheatsheets/devise.html
  devise_for :users, skip: [:sessions], controllers: {
    sessions: 'users/sessions'
  }

  # devise_for :users, :path => '', path_names: {
  #   sign_in: 'login', sign_out: 'logout', sign_up: 'register'
  # }, controllers: { sessions: 'users/sessions' }


  # devise_for :users, skip: [:sessions, :registrations]
  devise_scope :user do
    get "login" => "users/sessions#new", as: :new_user_session
    post "login" => "users/sessions#create", as: :user_session
    delete "logout" => "users/sessions#destroy", as: :destroy_user_session
  end

  resources :aircrafts, only: [:index, :show]  do
    put :favorite, on: :member
  end

  get 'admin/dashboard', to: "admin/admin#dashboard"
  namespace :admin do
    # Editor
    namespace :editor do
      resources :aircrafts
      resources :roles
      resources :types
    end

    resources :users
  end


  # get 'about', to: 'pages#about', as: 'about'
  # get 'contact', to: 'pages#contact', as: 'contact'

  %w[about contact].each do |page|
    get page, controller: "pages", action: page
  end

  get 'name/:user', to: 'pages#user'
end
