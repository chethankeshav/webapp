Rails.application.routes.draw do
  root 'users#new'

  get 'users/login'
  get 'users/signup'
  get 'users/welcome'

  post '/login',
  controller: "users",
  action: "login"

  post '/signup',
  controller: "users",
  action: "signup"

end
