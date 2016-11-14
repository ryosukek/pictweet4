Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'                       # ルートパスの設定
  get 'tweets'          => 'tweets#index'   # ツイート一覧画面
  get 'tweets/new'      => 'tweets#new'     # ツイート投稿画面
  post 'tweets'         => 'tweets#create'  # ツイート保存
  delete 'tweets/:id'   => 'tweets#destroy' # ツイート削除
  patch 'tweets/:id'    => 'tweets#update'  # ツイート編集後更新
  get 'tweets/:id/edit' => 'tweets#edit'    # ツイート編集
  get 'tweets/:id'      => 'tweets#show'    # ツイート詳細画面
  get 'users/:id'       => 'users#show'     # Mypage一覧画面
end
