Rails.application.routes.draw do

	get "/pages/about" => "pages#about", as: :about
	get "/pages/contact" => "pages#contact", as: :contact

	get "/posts" => "posts#index"
	post "/posts" => "posts#create"

	get "/posts/show" => "posts#show", as: :show
	get "/posts/new" => "posts#new"

	


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

