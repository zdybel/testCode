Rails.application.routes.draw do
  root 'static_pages#index'
  
devise_for :patients, path: 'patients', controllers: {
  sessions: "patients/sessions",
  registrations: "patients/registrations",
  passwords: "patients/passwords",
  confirmations: "patients/confirmations"
}


namespace :patients do
  resources :requests, only: [:new, :create, :edit, :update, :destroy, :show,] do
    patch 'match/:id' , to: "requests#choose_match", as: 'choose_match'
    patch 'unmatch/:id', to: "requests#delete_comfirmation", as: 'delete_confirmation'
  end
end

resources :patients, only: [:show]

devise_for :offices, path: 'offices', controllers: {
  sessions: "offices/sessions",
  registrations: "offices/registrations",
  passwords: "offices/passwords",
  confirmations: "offices/confirmations"
}
namespace :offices do
  resources :openings, only: [:new, :create, :edit, :update, :destroy, :show] do
    patch 'confirm/:id', to: "openings#confirm_request", as: 'confirm_request'
  end
end
  
resources :offices, only: [:show]


end
