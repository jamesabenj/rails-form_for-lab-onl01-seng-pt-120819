Rails.application.routes.draw do
  resources 'students', only: [:new, :create, :edit, :update]
  get '/students/:id', to: 'students#show'
  patch 'students/:id', to: 'students#update'

  resources 'school_classes', only: [:new, :create, :edit, :update]
  get 'school_classes/:id', to: 'school_classes#show'
  patch 'school_classes/:id', to: 'school_classes#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
