Rails.application.routes.draw do
  resources :cosos
  get 'welcome/index'
  
  root 'welcome#sarasa'
  
  get 'julopedia/:query', to: 'julopedia#show', constraints: { query: /.+/ }
  
  resources :articles
end
