Rails.application.routes.draw do


  resources :accounts do
    resources :transactions, shallow: true
    resources :statements, shallow: true
  end
end
