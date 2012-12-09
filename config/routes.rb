Smartorhot::Application.routes.draw do
  resources :extended_profiles

    devise_for :users
    resources :users, :only => [:show]
    resources :photos
    match "attractive" => "public_pages#attractive"
	# match "show" => "photos#show",:as => :photo
	root :to => "public_pages#home"
end
