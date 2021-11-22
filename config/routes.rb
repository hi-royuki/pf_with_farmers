Rails.application.routes.draw do
  devise_for :general_users
  devise_for :farmer_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
