Rails.application.routes.draw do
  get 'people/edit'
  get 'people/index'
  get 'people/show'
  get 'people/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :people
end
