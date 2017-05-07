Rails.application.routes.draw do
  get '/gelato' => 'gelatos#gelato_items'

  get '/' => 'gelatos#index'
  get '/gelatos' => 'gelatos#index'

  get '/gelatos/new' => 'gelatos#new'
  post '/gelatos' => 'gelatos#create'

  get '/gelatos/:id' => 'gelatos#show'

  get 

end
