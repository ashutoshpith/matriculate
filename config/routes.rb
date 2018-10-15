Rails.application.routes.draw do
  
  
  

  devise_for :users
  resources :javaques
  namespace :java do
    resources :jprogresses
  end
  namespace :java do
    get 'article/index'
  end
  namespace :java do
    resources :jps
    
  end
  namespace :chems do
    get 'ionics/index'
  end
  get 'java/progress'
  get 'java/read'
  get 'java/index'
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

