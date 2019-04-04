Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create, :destroy]
  end

#   # DELETE /doses/6767
#   resources :doses, only: [:destroy] do

#     resources :ingredients, only: [:new, :create] do
#     end
#   end


#   # DELETE /integredients/6767
#   resources :ingredients, only: [:destroy]
end
