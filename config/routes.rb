Rails.application.routes.draw do
  get 'projects/dashboard'
  get 'projects/create'

  root 'projects#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
