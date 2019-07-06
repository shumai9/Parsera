Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'page#index'
  get '/page/', to: 'page#index', as: 'page'
  get '/page/visits', to: 'page#show_count', as: 'visits'
  get '/page/visits/sorted', to: 'page#sort_views', as: 'sorted'
  #get '/page/visit_count', to: 'pages#show_count', as: 'visits'
end
