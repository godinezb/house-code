Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope module: 'api' do
    namespace :v1 do
      root :to => "properties#index"
      resources :properties, :only => [:index, :create, :show, :destroy]
      patch 'properties/:id', to: 'properties#update'
    end
  end
end
