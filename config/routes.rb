Rails.application.routes.draw do

  root to: 'articles#index'

  # Create
  get '/articles/new', to: 'articles#new', as: 'new_article'
  post '/articles', to: 'articles#create'

  # Update
  get '/articles/:id/edit', to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update'

  # All articles
  get '/articles', to: 'articles#index'

  # Specific article
  get '/articles/:id', to: 'articles#show', as: 'article'

  # Delete
  delete '/articles/:id', to: 'articles#destroy'

end