Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # show all
  get 'tasks', to: 'tasks#index'

  # create new
  get 'tasks/new', to: 'tasks#new', as: 'task_new'
  post 'tasks', to: 'tasks#create'

  # show task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  #edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'task_edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'task_update'

  #delete task
  delete 'tasks/:id', to: 'tasks#destroy'

end
