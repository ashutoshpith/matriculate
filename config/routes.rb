Rails.application.routes.draw do
  
  get 'javapracs/strings'
  get 'javapracs/loops'
  get 'javapracs/functions'
  
  get 'javacat/start' 
  get 'java/read'
  get 'java/practice'
  get 'java/challenge'
  get 'java/progress'
  get 'welcome/home'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
