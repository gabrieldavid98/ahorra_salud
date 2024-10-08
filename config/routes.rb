Rails.application.routes.draw do
  get 'chat/home'
  devise_for :supports
  devise_for :admins
  devise_for :patients

  resources :patient_profiles
  resources :appointments
  resources :medicament_authorizations
  resources :medical_records
  resources :tests

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
  get 'pages/user'
  get 'pages/admin'

  put '/medicament_authorizations/:id/authorize',
    to: 'medicament_authorizations#authorize',
    as: 'medicament_authorizations_authorize'
end
