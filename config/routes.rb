Rails.application.routes.draw do
  get '/tasks', to: 'tasks#index', as: 'tasks'
  # create
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  get 'tasks/:id', to: 'tasks#show', as: 'task'

  #  store in db
  post '/tasks', to: 'tasks#create'

  # update

  # show task
  # post 'tasks/:id, to: '
  # get 'tasks/update' to: 'tasks'
  # get 'tasks/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
