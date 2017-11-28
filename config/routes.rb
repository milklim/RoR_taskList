Rails.application.routes.draw do
  get '/', to:'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  post 'tasks/new', to: 'tasks#create', as: 'create_task'
  put 'tasks/update/:id', to: 'tasks#update', as: 'update_task'
  delete 'tasks/delete/:id', to: 'tasks#delete', as: 'del_task'

  # resources :tasks do
  #   get 'new', to: 'tasks#new'
  #   post 'create', to: 'tasks#create'
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
