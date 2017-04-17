Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :urls do
    resources :url_contents
  end

  root 'welcome#index'

end
