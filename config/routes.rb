Rails.application.routes.draw do
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

  root 'pages#home'

  get 'about', to: 'pages#about', as: 'about'
  get 'contact', to: 'pages#contact', as: 'contact'
  get 'name/:user', to: 'pages#user'
end
