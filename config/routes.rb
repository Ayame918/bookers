Rails.application.routes.draw do
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'
  get 'books/new'
  get 'books/:id' => 'books#show', as: 'book'#入力データ
  get '/books' => 'books#index'#入力データ一覧
  get 'books/:id/edit' => 'books#edit',as: 'edit_book'#編集
  patch 'books/:id' => 'books#update', as: 'update_book'#更新
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'#削除
  post '/books' => 'books#create'#データ保存
  get '/new' => 'books#new'#New Book
  get root to: 'homes#top'#bookersへようこそ
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
