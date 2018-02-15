Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "pages#home"
  #teachers all route
  get '/signup', to: 'teachers#new'
  resources :teachers, except: [:new]

  #login routes
  get '/login', to: 'login#new'
  post '/login', to: "login#create"
  delete '/logout', to: "login#destroy"

  #subjects routes
  resources :subjects

  #students routes
  resources :students
end
