Rails.application.routes.draw do
  
  
  

  namespace :chems do
    get 'ionics/index'
  end
  resources :jfs
  resources :jls
  resources :jps
  get 'javacat/start' 
  get 'java/read'
  get 'java/practice'
  get 'java/challenge'
  get 'java/progress'
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

