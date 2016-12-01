Rails.application.routes.draw do
  resources :events do
    resources :exceptions, module: :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
