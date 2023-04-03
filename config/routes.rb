Rails.application.routes.draw do
  resources :cosos
  get 'welcome/index'
  
  root 'welcome#sarasa'
end
