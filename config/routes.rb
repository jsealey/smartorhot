Smartorhot::Application.routes.draw do
    devise_for :users
    resources :photos
	# match "show" => "photos#show",:as => :photo
	root :to => "public_pages#home"
end
