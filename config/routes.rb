Rails.application.routes.draw do
  
  
  

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

