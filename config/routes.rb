Rails.application.routes.draw do
  root 'demo#index'
  # get 'pages/index'
  # get 'pages/show'
  # get 'pages/edit'
  # get 'pages/delete'
  # get 'pages/new'

  # get 'subjects/index'
  # get 'subjects/show'
  # get 'subjects/new'
  # get 'subjects/edit'
  # get 'subjects/delete'

  resources :subjects do
    member do
      get :delete
    end
  end

  resources :pages do
    member do
      get :delete
    end
  end

  get 'demo/index'
  get 'demo/hello'
end
