require 'sidekiq/web'

Rails.application.routes.draw do
  
  resources :jobs 
  resources :applies  do 
    get'/', to: 'applies#accept', as: 'accept'
  end   
   
    
 

  root to: 'jobs#index'

  # post '/applies', to: 'applies#accept', as: 'accept'
  # post '/job_board1/apply', to: 'apply#reject', as: 'reject'
  
  devise_for :users, controllers: {registrations: 'registrations'}
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
