Rails.application.routes.draw do
  resources :medals do
    match '/scrape', to: 'medals#scrape', via: :post, on: :collection
  end
  root to: 'medals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
