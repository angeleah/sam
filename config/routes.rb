Sam::Application.routes.draw do
  root :to => "clients#index"
  resources :clients do
    resources :notes
  end
end
