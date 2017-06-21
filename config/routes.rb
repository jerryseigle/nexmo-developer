Rails.application.routes.draw do
  namespace :admin do
    resources :events
    resources :sessions
    root to: 'events#index'
  end

  get 'markdown/show'

  get '/tutorials', to: 'tutorials#index'
  get '/tutorials/*document', to: 'tutorials#show'
  get '/*product/tutorials', to: 'tutorials#index'

  get '/documentation', to: 'static#documentation'
  get '/contribute', to: 'static#contribute'
  get '/tools', to: 'static#tools'
  get '/community', to: 'static#community'
  get '/changelog', to: 'static#changelog'

  get '/styleguide', to: 'static#styleguide'
  get '/write-the-docs', to: 'static#write_the_docs'

  match '/search', to: 'search#results', via: [:get, :post]
  match '/quicksearch', to: 'search#quicksearch', via: [:get, :post]

  get '/api', to: 'api#index'
  get '/api/*document', to: 'api#show'

  get '/:product/*document', to: 'markdown#show', constraints: DocumentationConstraint.new

  get '/robots.txt', to: 'static#robots'

  get '*unmatched_route', to: 'application#not_found'

  root 'static#landing'
end
