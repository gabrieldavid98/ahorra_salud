Rails.application.routes.draw do
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

  get '/medical_records/:id/as_pdf',
    to: 'medical_records#save_as_pdf',
    as: 'medical_records_save_as_pdf'

  get 'chat/home'
  post '/chat/:id/msg', to: 'chat#create', as: 'chat_msg_send'
end
