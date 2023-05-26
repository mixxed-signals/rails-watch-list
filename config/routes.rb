Rails.application.routes.draw do
  get '/lists', to: 'lists#index', as: 'lists'
  get 'lists/new', to: 'lists#new', as: 'new_list'
  get 'lists/:id', to: 'lists#show', as: 'list'
  post 'lists', to: 'lists#create'
  delete 'lists/:id', to: 'lists#destroy'
  get '/lists/:id/bookmarks/new', to: 'bookmarks#new', as: 'new_list_bookmark'
  post 'lists/:id/bookmarks', to: 'bookmarks#create'
  delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
