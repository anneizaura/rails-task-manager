Rails.application.routes.draw do
 # CRUD
 # READ index varias tarefas e o show 1 tarefa
   # verb path, to: 'control#action'
  # READ
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show'

  # # CREATE
  # # 1. rota pra levar o usuario ao formulário
  get '/tasks/new', to: 'tasks#new'

  # # 2. rota pra levar as infos que o usuário inputou p/ o controller
  post '/tasks', to: 'tasks#create'

  # # UPDATE
  # # 1. rota pra levar o usuario ao formulário
  get '/tasks/:id/edit', to: 'tasks#edit'

  # # 2. rota pra levar as infos que o usuário inputou p/ o controller
  patch '/tasks/:id', to: 'tasks#update'

  # # DELETE
  delete '/tasks/:id', to: 'tasks#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
