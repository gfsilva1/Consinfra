Rails.application.routes.draw do
  devise_for :users
  # get 'tasks', to: 'tasks#index'
  # post 'tasks', to: 'tasks#create'
  # get 'tasks/new', to: 'tasks#new', as: :new_task
  # get 'tasks/:id', to: 'tasks#show', as: :task
  # get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch 'tasks/:id', to: 'tasks#update'
  # delete 'tasks/:id', to: 'tasks#destroy'

  root to: "pages#home"
  
  resources :products
  resources :suppliers, only: [:index, :show, :new, :create]
  
  resources :projects do
    resources :suppliers do
      resources :tasks
    end

    resources :work_progresses, only: [:new, :create, :edit, :update]

  end
end
