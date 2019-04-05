Rails.application.routes.draw do

  root to 'cocktails#index'

  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
    resources :doses, only: [:destroy]

#   # DELETE /doses/6767
#   resources :doses, only: [:destroy] do

#     resources :ingredients, only: [:new, :create] do
#     end
#   endr

#   # DELETE /integredients/6767
#   resources :ingredients, only: [:destroy]
end
