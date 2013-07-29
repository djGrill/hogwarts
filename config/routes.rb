Hogwarts::Application.routes.draw do
  root to: 'welcome#index'

  get '/houses' => 'houses#index'
  get '/houses/:id' => 'houses#show', as: :house

  get '/students' => 'students#index'
  get '/students/hat' => 'students#hat'
  get '/students/new' => 'students#new'
  get '/students/create' => 'students#create'
  get '/students/:id' => 'students#show', as: :student
end
