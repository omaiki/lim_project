Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :urls do
    member do
      # only need to show index
      # resources :page_contents
      get :page_contents
    end
  end
end
