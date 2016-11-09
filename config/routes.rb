Rails.application.routes.draw do
  devise_for :users
  devise_for :users
  root 'tweets#index'                 # ルートパスの設定
  get 'tweets'     => 'tweets#index'  # ツイート一覧画面
  get 'tweets/new' => 'tweets#new'    # ツイート投稿画面
  post 'tweets'    => 'tweets#create' # ツイート保存
end
