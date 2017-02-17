Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts, only: [:create]  #could put any of the 7 routes for resources here
  get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
