Rails.application.routes.draw do

  # トップページ
  root to: 'home#index'
  # アバウトページ
  get 'home/about'
  # ユーザ選択ページ
  get 'home/choice'

  # 一般ユーザー
  devise_for :general_users, controllers: {
    sessions: 'general_users/sessions',
    passwords: 'general_users/passwords',
    registrations: 'general_users/registrations'
  }

  # 農家ユーザー
  devise_for :farmer_users, controllers: {
    sessions: 'farmer_users/sessions',
    passwords: 'farmer_users/passwords',
    registrations: 'farmer_users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
