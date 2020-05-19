Rails.application.routes.draw do
  resources 'students', only: [:new, :create, :edit, :update,]
  get '/students/:id', to: 'students#show'

  resources 'school_classes', only: [:new, :create, :edit, :update,]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
