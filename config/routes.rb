Rails.application.routes.draw do
  root to: 'landing_pages#index'

  get 'landing_pages/index'
  get 'landing_pages/about'
  get 'landing_pages/contact'

  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    passwords:          'users/passwords',
    registrations:      'users/registrations',
    sessions:           'users/sessions'
  }
end
