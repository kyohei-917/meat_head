Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/top'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end

  resources :users
  resources :questions
  resources :answers do
    resources :answer_details
  end
end
