Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  resources :questions do
     resources :answers do 
        resources :corrections do 
            put :correct, on: :member
        end
     end
  end  

  
end
