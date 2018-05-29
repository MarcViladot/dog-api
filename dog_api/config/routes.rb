Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
		namespace 'v1' do
    	resources :breeds
    	resources :dogs
    	resources :photos

			#get 'url', to: 'breeds#showFav'
			get 'photos/random/:max', to: 'photos#random'
    end
end
end
