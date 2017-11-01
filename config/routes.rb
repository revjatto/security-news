Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :submissions do
    member do
      put "like", to: "submissions#upvote"
      put "dislike", to: "submissions#downvote"
    end
    resources :comments
  end
 
  root to: 'submissions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
