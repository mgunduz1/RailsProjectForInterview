Rails.application.routes.draw do
  resources :input_values, param: :input_val
  get '/:input_val', to: 'input_values#show', as: :input_path
  root 'input_values#new'
end
