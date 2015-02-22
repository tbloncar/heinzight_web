Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api do
    get "data_syncs/sync" => "data_syncs#sync"
  end
end
