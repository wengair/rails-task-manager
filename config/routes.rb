Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # READ
  get  'tasks',     to: 'tasks#index', as: :tasks
  get  'tasks/new', to: 'tasks#new',   as: :new_task
  get  'task/:id',  to: 'tasks#show',  as: :task
  # CREATE
  post 'tasks',     to: 'tasks#create'
  # UPDATE
  get    'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch  'task/:id',       to: 'tasks#update'
  # DELETE
  delete 'task/:id',       to: 'tasks#delete'
end
