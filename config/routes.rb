Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'stories#index'
  resources :stories do
    resources :sentences 
  end
end
