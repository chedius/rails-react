Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'wears/index'
      post 'wears/create'
      delete 'wears/:id', to: 'wears#destroy'
    end
  end
  root 'wears#index'
  #resources :wears
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
