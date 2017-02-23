Rails.application.routes.draw do

  devise_for :authors
    root to: 'home/posts#index'


    namespace :authors do
        resources :posts
    end

    scope module: 'home' do
        #get 'home' => 'pages#home', as: :home
        get 'sobre' => 'pages#sobre', as: :sobre
        get 'contato' => 'pages#contato', as: :contato
        get 'posts' => 'posts#index', as: :posts
        get 'posts/:id' => 'posts#show', as: :post

    end

end
