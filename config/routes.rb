Rails.application.routes.draw do



  scope :api do
    resources :comments
    resources :users
    resources :stocks
    resources :portfolios
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    post 'oauth/facebook'
    get '/stock_info', to: 'intrinio#stock_info'
    get '/stock_price', to: 'intrinio#stock_price'
  end
end
