Rails.application.routes.draw do
  resources :comments
  resources :dishes
  get '/dishes/:id/confirm_delete', to: 'dishes#confirm_delete'
end
