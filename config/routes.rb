Rails.application.routes.draw do

  resources :students do
    collection { post :import }
  end

#ensayo
  resources :hmcourses do
    collection { post :import }
  end

   get 'userposts' => 'user_posts#show'

  devise_for :users

   resources :constructions do
      resources :comments, only: [:create, :destroy]
   end

   root 'constructions#index'

end
