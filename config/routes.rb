Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/destroy'
  get 'sessions/new'
  resources :students
  resources :courses do
  resources :cohorts
end

  resources :instructors
  resources :cohorts
  resources :welcome

  delete 'terminate' => 'cohorts#destroy'
  resources :users
  # resources :sessions
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'logout' => 'sessions#destroy'


  root 'welcome#index'

  # get 'cohorts/new'
  # get 'cohorts/index'
  # get 'cohorts/edit'
  # get 'cohorts/show'
  # get 'instructors/index'
  # get 'instructors/edit'
  # get 'instructors/new'
  # get 'instructors/show'
  # get 'index/edit'
  # get 'index/new'
  # get 'index/show'
  # get 'courses/index'
  # get 'courses/show'
  # get 'courses/create'
  # get 'courses/new'
  # get 'courses/edit'
  # get 'courses/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
