Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  root 'admin/templates#index'

  namespace :admin do


    resources :templates do
      member do
        post :generate_report
      end
      resources :products
    end
  end
end
