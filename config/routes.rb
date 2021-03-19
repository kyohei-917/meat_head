Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes/top'
  # 問合せ窓口
  get 'homes/contact'

  # 診断結果別views
  get 'answers/result100'
  get 'answers/result70'
  get 'answers/result50'
  get 'answers/result30'
  get 'answers/result0'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
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
