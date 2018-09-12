Rails.application.routes.draw do
root "boards#index"

  resources :boards do
    resources :lists
  end

  scope "lists/:list_id", as: 'list' do
    resources :tasks, only: [:new, :edit, :update, :create, :destroy]
  end
end
