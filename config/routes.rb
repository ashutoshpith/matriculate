Rails.application.routes.draw do
  
  
  

  namespace :java do
    resources :jps
  end
  namespace :chems do
    get 'ionics/index'
  end
  resources :jls
  
  get 'javacat/start' 
  get 'java/read'
 
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

