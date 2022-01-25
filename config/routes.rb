Rails.application.routes.draw do

  root 'questionnaires#index'
  resources :questionnaires, only: [:show] do
    resources :questions, only: [:show, :update]
  end
end
