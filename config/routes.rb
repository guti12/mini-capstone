Rails.application.routes.draw do
  get '/gelato' => 'gelatos#gelato_items'

  get '/' => 'gelatos#index'
  get '/gelatos' => 'gelatos#index'

  get '/gelatos/new' => 'gelatos#new'
  post '/gelatos' => 'gelatos#create'

  get '/gelatos/:id' => 'gelatos#show'


  get '/gelatos/:id/edit' => 'gelatos#edit'
  patch '/gelatos/:id' => 'gelatos#update'

  delete '/gelatos/:id' => 'gelatos#destroy'
 
 	get '/random' => 'gelatos#random'

 	get '/signup' => 'users#new'
 	post '/users' => 'users#create'

 	get '/login' => 'sessions#new'
 	post '/login' => 'sessions#create'
 	get '/logout' => 'sessions#destroy'

 	post '/orders' => 'orders#create'
 	get '/orders/:id' => 'orders#show'

 	post '/cart' => 'carted_products#create'
 	get '/cart/:id' => 'carted_products#show'

end
