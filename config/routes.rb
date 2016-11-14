Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'                     # ルートパスの設定
  get 'tweets'        => 'tweets#index'   # ツイート一覧画面
  get 'tweets/new'    => 'tweets#new'     # ツイート投稿画面
  post 'tweets'       => 'tweets#create'  # ツイート保存
  delete 'tweets/:id' => 'tweets#destroy' # ツイート削除
  get 'users/:id'     => 'users#show'     # Mypage一覧画面
end
