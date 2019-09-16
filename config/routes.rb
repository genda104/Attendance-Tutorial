Rails.application.routes.draw do
  root 'static_pages#top'     # topページはこのアプリケーションの初期ページとなるのでroot設定にする
  get '/signup', to: 'users#new'
end
