Rails.application.routes.draw do
  root 'shots#index'

  # http://ricostacruz.com/cheatsheets/devise.html
  devise_for :users, skip: [:sessions], controllers: {
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get "login" => "users/sessions#new", as: :new_user_session
    post "login" => "users/sessions#create", as: :user_session
    delete "logout" => "users/sessions#destroy", as: :destroy_user_session
  end

# TAGS
  get 'tags/:tag', to: "shots#tags", as: "tag"

# SHOTS/Category


# AIRCRAFTS
  resources :aircrafts, only: [:index, :show]  do
    put :favorite, on: :member
    resources :comments, only: [:index, :new, :create] do
      post :flag, on: :member
    end
  end

# SHOTS
  resources :shots, except: [:edit, :update, :destroy]  do
    put :favorite, on: :member
    post :flag, on: :member
    resources :comments, only: [:index, :new, :create] do
      post :flag, on: :member
    end
    # get ':category', to: "shots#categroy", as: "category", on: :collection
  end

# COMMENTS
  resources :comments, only: [:show]

# ADMIN routes
  get 'admin/dashboard', to: "admin#dashboard" # Dashboard
  namespace :admin do
    # Editor
    namespace :editor do
      resources :aircrafts
      resources :sub_attributes
      resources :engines
    end

    resources :quotes#, except: [:new, :edit]
    resources :users, except: [:new, :create]
    resources :flags, only: [:index, :destroy]
    resources :shots, only: [:index, :destroy]
    resources :comments, only: [:index, :destroy]
  end

# PAGES
  %w[about contact credits faq].each do |page|
    get page, controller: "pages", action: page
  end

# PROFILE
  get 'users/:id', to: 'users#show', as: 'profile'
end
