Rails.application.routes.draw do
  devise_for :users
  root 'home#index'


resources :drafts
  get 'markdown/preview'
  get 'items', controller: :home, action: :items


  resources :users, only: [ :show ], path: '', controller: :profile do
    resources :items, only: [ :index, :show ] do

    end
    resources :stocks, only: [ :index ]
  end

end
