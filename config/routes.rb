Rails.application.routes.draw do
  devise_for :admins
  root to: 'products#index'
  resources :products do
    member do
      put 'like', to: 'products#upvote'
      put 'dislike', to: 'products#downvote'
    end
    resources :reviews
  end
end
