Smartorhot::Application.routes.draw do
  resources :extended_profiles

    devise_for :users
    resources :photos
	# match "show" => "photos#show",:as => :photo
	root :to => "public_pages#home"
end
