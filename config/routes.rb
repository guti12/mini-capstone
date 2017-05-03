Rails.application.routes.draw do
  get '/gelato' => 'gelatos#gelato_items'
end
