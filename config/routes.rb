Rails.application.routes.draw do
  devise_for :users
  root 'appointments#index'

  resources :users, except: [:edit, :update]
  resources :doctors, except: [:edit, :update]  do
    resources :appointments, only: [:index, :new, :create, :destroy, :show]
  end



end


