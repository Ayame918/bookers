Rails.application.routes.draw do
  get 'homes/new'
  get 'homes/index'
  get 'homes/show'
  get 'homes/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  post 'books' => 'books#create'
  get '/books' => 'books#post'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
