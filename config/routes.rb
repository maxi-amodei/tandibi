# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  authenticate :user do
    resources :timelines, only: [:index, :show], param: :username
  end
  resources :posts, only: [:create, :show]
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
