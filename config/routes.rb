Smartorhot::Application.routes.draw do
  devise_for :users

	root :to => "public_pages#home"
end
