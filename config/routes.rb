# == Route Map
#
#                          Prefix Verb   URI Pattern                                         Controller#Action
#                            root GET    /                                                   shots#index
#                   user_password POST   /users/password(.:format)                           devise/passwords#create
#               new_user_password GET    /users/password/new(.:format)                       devise/passwords#new
#              edit_user_password GET    /users/password/edit(.:format)                      devise/passwords#edit
#                                 PATCH  /users/password(.:format)                           devise/passwords#update
#                                 PUT    /users/password(.:format)                           devise/passwords#update
#        cancel_user_registration GET    /users/cancel(.:format)                             devise/registrations#cancel
#               user_registration POST   /users(.:format)                                    devise/registrations#create
#           new_user_registration GET    /users/sign_up(.:format)                            devise/registrations#new
#          edit_user_registration GET    /users/edit(.:format)                               devise/registrations#edit
#                                 PATCH  /users(.:format)                                    devise/registrations#update
#                                 PUT    /users(.:format)                                    devise/registrations#update
#                                 DELETE /users(.:format)                                    devise/registrations#destroy
#                new_user_session GET    /login(.:format)                                    users/sessions#new
#                    user_session POST   /login(.:format)                                    users/sessions#create
#            destroy_user_session DELETE /logout(.:format)                                   users/sessions#destroy
#                             tag GET    /tags/:tag(.:format)                                shots#tags
#               favorite_aircraft PUT    /aircrafts/:id/favorite(.:format)                   aircrafts#favorite
#           flag_aircraft_comment POST   /aircrafts/:aircraft_id/comments/:id/flag(.:format) comments#flag
#               aircraft_comments GET    /aircrafts/:aircraft_id/comments(.:format)          comments#index
#                                 POST   /aircrafts/:aircraft_id/comments(.:format)          comments#create
#            new_aircraft_comment GET    /aircrafts/:aircraft_id/comments/new(.:format)      comments#new
#                       aircrafts GET    /aircrafts(.:format)                                aircrafts#index
#                        aircraft GET    /aircrafts/:id(.:format)                            aircrafts#show
#                   favorite_shot PUT    /shots/:id/favorite(.:format)                       shots#favorite
#                       flag_shot POST   /shots/:id/flag(.:format)                           shots#flag
#               flag_shot_comment POST   /shots/:shot_id/comments/:id/flag(.:format)         comments#flag
#                   shot_comments GET    /shots/:shot_id/comments(.:format)                  comments#index
#                                 POST   /shots/:shot_id/comments(.:format)                  comments#create
#                new_shot_comment GET    /shots/:shot_id/comments/new(.:format)              comments#new
#                  category_shots GET    /shots/:category(.:format)                          shots#categroy
#                           shots GET    /shots(.:format)                                    shots#index
#                                 POST   /shots(.:format)                                    shots#create
#                        new_shot GET    /shots/new(.:format)                                shots#new
#                            shot GET    /shots/:id(.:format)                                shots#show
#                         comment GET    /comments/:id(.:format)                             comments#show
#                 admin_dashboard GET    /admin/dashboard(.:format)                          admin/admin#dashboard
#          admin_editor_aircrafts GET    /admin/editor/aircrafts(.:format)                   admin/editor/aircrafts#index
#                                 POST   /admin/editor/aircrafts(.:format)                   admin/editor/aircrafts#create
#       new_admin_editor_aircraft GET    /admin/editor/aircrafts/new(.:format)               admin/editor/aircrafts#new
#      edit_admin_editor_aircraft GET    /admin/editor/aircrafts/:id/edit(.:format)          admin/editor/aircrafts#edit
#           admin_editor_aircraft GET    /admin/editor/aircrafts/:id(.:format)               admin/editor/aircrafts#show
#                                 PATCH  /admin/editor/aircrafts/:id(.:format)               admin/editor/aircrafts#update
#                                 PUT    /admin/editor/aircrafts/:id(.:format)               admin/editor/aircrafts#update
#                                 DELETE /admin/editor/aircrafts/:id(.:format)               admin/editor/aircrafts#destroy
#     admin_editor_sub_attributes GET    /admin/editor/sub_attributes(.:format)              admin/editor/sub_attributes#index
#                                 POST   /admin/editor/sub_attributes(.:format)              admin/editor/sub_attributes#create
#  new_admin_editor_sub_attribute GET    /admin/editor/sub_attributes/new(.:format)          admin/editor/sub_attributes#new
# edit_admin_editor_sub_attribute GET    /admin/editor/sub_attributes/:id/edit(.:format)     admin/editor/sub_attributes#edit
#      admin_editor_sub_attribute GET    /admin/editor/sub_attributes/:id(.:format)          admin/editor/sub_attributes#show
#                                 PATCH  /admin/editor/sub_attributes/:id(.:format)          admin/editor/sub_attributes#update
#                                 PUT    /admin/editor/sub_attributes/:id(.:format)          admin/editor/sub_attributes#update
#                                 DELETE /admin/editor/sub_attributes/:id(.:format)          admin/editor/sub_attributes#destroy
#            admin_editor_engines GET    /admin/editor/engines(.:format)                     admin/editor/engines#index
#                                 POST   /admin/editor/engines(.:format)                     admin/editor/engines#create
#         new_admin_editor_engine GET    /admin/editor/engines/new(.:format)                 admin/editor/engines#new
#        edit_admin_editor_engine GET    /admin/editor/engines/:id/edit(.:format)            admin/editor/engines#edit
#             admin_editor_engine GET    /admin/editor/engines/:id(.:format)                 admin/editor/engines#show
#                                 PATCH  /admin/editor/engines/:id(.:format)                 admin/editor/engines#update
#                                 PUT    /admin/editor/engines/:id(.:format)                 admin/editor/engines#update
#                                 DELETE /admin/editor/engines/:id(.:format)                 admin/editor/engines#destroy
#                     admin_users GET    /admin/users(.:format)                              admin/users#index
#                 edit_admin_user GET    /admin/users/:id/edit(.:format)                     admin/users#edit
#                      admin_user GET    /admin/users/:id(.:format)                          admin/users#show
#                                 PATCH  /admin/users/:id(.:format)                          admin/users#update
#                                 PUT    /admin/users/:id(.:format)                          admin/users#update
#                                 DELETE /admin/users/:id(.:format)                          admin/users#destroy
#                     admin_flags GET    /admin/flags(.:format)                              admin/flags#index
#                      admin_flag DELETE /admin/flags/:id(.:format)                          admin/flags#destroy
#                     admin_shots GET    /admin/shots(.:format)                              admin/shots#index
#                      admin_shot DELETE /admin/shots/:id(.:format)                          admin/shots#destroy
#                  admin_comments GET    /admin/comments(.:format)                           admin/comments#index
#                   admin_comment DELETE /admin/comments/:id(.:format)                       admin/comments#destroy
#                           about GET    /about(.:format)                                    pages#about
#                         contact GET    /contact(.:format)                                  pages#contact
#                                 GET    /name/:user(.:format)                               pages#user
#

Rails.application.routes.draw do

  # root 'pages#home'
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
  get 'admin/dashboard', to: "admin/admin#dashboard" # Dashboard
  namespace :admin do
    # Editor
    namespace :editor do
      resources :aircrafts
      resources :sub_attributes
      resources :engines
    end

    resources :quotes
    resources :users, except: [:new, :create]
    resources :flags, only: [:index, :destroy]
    resources :shots, only: [:index, :destroy]
    resources :comments, only: [:index, :destroy]
  end

# PAGES
  %w[about contact].each do |page|
    get page, controller: "pages", action: page
  end

# PROFILE
  get 'name/:user', to: 'pages#user'
end
