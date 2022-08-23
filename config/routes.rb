Rails.application.routes.draw do
  get 'calculations/show'
  get 'calculations/new'
  resources :calculations
  root 'calculations#new'
end
