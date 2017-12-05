Rails.application.routes.draw do
  get 'openings/index'

  get 'openings/show'

  get 'openings/new'

  get 'openings/create'

  get 'openings/edit'

  get 'openings/update'

  get 'openings/delete'

  get 'requests/index'

  get 'requests/show'

  get 'requests/new'

  get 'requests/create'

  get 'requests/edit'

  get 'requests/update'

  get 'requests/delete'

  post 'events/new'

  resources :requests

  resources :openings

devise_for :users, :controllers => { registrations: 'registrations' }
devise_scope :user do
  authenticated :user do
    root 'requests#show', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end

end
