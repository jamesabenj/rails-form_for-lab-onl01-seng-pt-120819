Rails.application.routes.draw do
  resources 'students', only: [:new, :create, :edit, :update,]
  get '/students/:id', to: 'students#show'

  resources 'school_classes', only: [:new, :create, :edit, :update,]
  get 'schoolclasses/:id' to: 'school_classes#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
