Rails.application.routes.draw do

	 resources :users 
	 #resources :posts
	 get '/posts' => 'posts#index'
	 #post '/posts' =>  'posts#create'
	 get  '/posts/new' => 'posts#new'
	 get ' /posts/:id/edit' => 'posts#edit'
	 get '/posts/:id' => 'posts#show'
	 get  '/posts/:post_id/comments' => 'comments#index'
	 get '/posts/:post_id/comments/new' => 'comments#new'
	 get '/posts/:post_id/comments/:id/edit' => 'comments#edit'
	 get '/posts/:post_id/comments/:id' => 'comments#show'

 
	 resources :posts do
	    resources :comments
	 end
   
   get '/login' => 'sessions#new', as: :login
   
	 root :to => 'posts#index'
 #get '/posts' => 'posts#index'
 #resource :sessions, :only => [:new, :create, :destroy]



# match 'users/new', :to => 'sessions#new'
 #match '/logout', :to => 'sessions#destroy'
 # resource :comments
 # resource :tags
end
