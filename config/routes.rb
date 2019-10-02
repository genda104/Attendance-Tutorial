Rails.application.routes.draw do
  get 'session/new'

  root 'static_pages#top'     # topページはこのアプリケーションの初期ページとなるのでroot設定にする
  get '/signup', to: 'users#new'
  
  #ログイン機能
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy' 
  
  resources :users
end
