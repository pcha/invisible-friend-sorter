Rails.application.routes.draw do
  resources :participants do
    post :sort
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
