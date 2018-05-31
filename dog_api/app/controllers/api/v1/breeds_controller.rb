module Api
	module V1
    	class BreedsController < ApplicationController
    	
    		def index
    			breeds = Breed.all
    			render json: breeds
    		end	

    		def create
				breed = Breed.new(breed_params)
				if breed.save
					render json: breed
				else
					render json: breed.errors
				end
			end

			def show
				breed = Breed.find(params[:id])
				render json: breed
			end

			def random
				breed = Breed.order("RAND()").limit(params[:max])
				render json: breed
			end

    		private

    		def breed_params
    			params.permit(:name)
    		end	


    	end
	end
end