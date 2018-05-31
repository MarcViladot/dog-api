Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
		namespace 'v1' do
    	resources :breeds
    	resources :dogs
    	resources :photos

			#get 'url', to: 'breeds#showFav'

			#Photos
			get 'photos/random/:max', to: 'photos#random'

			#Breeds
			get 'breeds/random/:max', to: 'breeds#random'

			#Dogs
			get 'dogs/random-breed/:breed_id', to: 'dogs#random_by_breed'
			get 'dogs/random/:max', to: 'dogs#random'
			


    end
end
end
