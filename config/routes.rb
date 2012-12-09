Smartorhot::Application.routes.draw do
  resources :extended_profiles
  match 'vote_smart/:id' => 'extended_profiles#vote_smart'
  match 'vote_dumb/:id' => 'extended_profiles#vote_dumb'
  match 'vote_hot/:id' => 'extended_profiles#vote_hot'
  match 'vote_ugly/:id' => 'extended_profiles#vote_ugly'
  
  devise_for :users
  resources :users, :only => [:show]
  resources :photos
  match "attractive" => "public_pages#attractive"
	# match "show" => "photos#show",:as => :photo
	root :to => "public_pages#home"
end
