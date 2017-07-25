Rails.application.routes.draw do

  scope :api do
    resources :comments
    resources :users
    resources :stocks
    resources :portfolios
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/facebook'
    get '/info', to: 'intrinio#info'
    get '/price', to: 'intrinio#price'
    get'/news', to: 'news#news'


  end
end
