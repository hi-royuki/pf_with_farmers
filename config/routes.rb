Rails.application.routes.draw do

  # トップページ
  root to: 'home#index'
  # アバウトページ
  get 'home/about'
  # ユーザ選択ページ
  get 'home/choice'
  get 'home/choice_login'

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

# 一般ユーザー
  namespace :general_users do
    resources :customers, only: [:show]
    resource :users, only: [:show, :edit, :update] do
    collection do
        get 'unsubscribe'
        patch 'withdraw'
      end
    end
    #joinは、イベントに対して参加フォームを送信する。joinは、に結びつくためネスト（親子関係）する
    resources :events, only: [:index, :show] do
      resources :joins, only: [:new, :create, :index, :show] do
      collection do
        post 'confirm'
        post 'back'
        get 'complete'

      end
    end
  end

  #コメントは、投稿画像に対してコメントされる。post_commentsは、postに結びつくためネスト（親子関係）する
    resources :posts, only: [:index, :show] do
     resources :post_comments, only: [:create, :destroy]
    end

  end

  #農家ユーザー
  namespace :farmer_users do
    resources :customers, only: [:show]

    resource :users, only: [:show, :edit, :update] do
    collection do
      get 'unsubscribe'
      patch 'withdraw'
      end
    end

    #joinは、イベントに対して参加フォームを送信する。joinは、に結びつくためネスト（親子関係）する
    resources :events, only: [:new, :create, :index, :show, :destroy] do
      collection do
        get 'confirm'
      # post 'update'

      end
     resources :joins, only: [:new, :create, :index] do
     # 7つ以外のアクションがある時は，collection(idなし)とmember(id含む)を使って指定する。
      collection do
        post 'confirm'
        post 'back'
        get 'complete'
        # get 'show'
        end
      end
   end

    #コメントは、投稿画像に対してコメントする。このため、post_commentsは、postに結びつくためネスト（親子関係）する
    resources :posts, only: [:create, :index, :show, :destroy] do
     resources :post_comments, only: [:create, :destroy]
    end


  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
