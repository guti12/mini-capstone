Rails.application.routes.draw do
  get '/gelato' => 'gelato#gelato_items'
end
