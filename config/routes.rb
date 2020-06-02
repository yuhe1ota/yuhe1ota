Rails.application.routes.draw do
  get 'users/profile' => 'users#top', as: :top
  get 'users/profile/edit' => 'users#profile_edit', as: :profile_edit
  get 'users/sign_up' => 'users#sign_up', as: :sign_up
  post 'users/sign_up' => 'users#account_create'
  get 'users/sign_in' => 'users#sign_in', as: :sign_in
  #ユーザーの商品リスト
  get 'users/product_list' => 'users#product_list', as: :product_list
  #ユーザーの商品詳細
  get 'users/products/new' => 'users#new_product', as: :new_product
  get '/users/products/(:id)/edit' => 'users#edit_product', as: :edit_product
  get 'users/products/(:id)' => 'users#products', as: :products
  get '/users/likes' => 'users#likes', as: :likes
  #ユーザーじゃないほうの商品詳細
  get '/' => 'markets#market_list', as: :market_list
  get '/markets/(:id)' => 'markets#market_product', as: :market_product
  get '/markets/(:id)/payment' => 'markets#payment', as: :payment
end
