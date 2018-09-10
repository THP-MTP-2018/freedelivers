Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contacts
  resources :services

  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  root 'home#index'
  get 'about', to: 'home#about'
  get 'contacts', to: 'contacts#index'
  get 'profil', to: 'home#profil'
  devise_for :admins
  devise_for :users

  get '*path' => redirect { '/' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
