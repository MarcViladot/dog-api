module Api
	module V1
    	class DogsController < ApplicationController

    		def index
    			dogs = Dog.all
    			render json: dogs.to_json(:include => [:breed, :photos])
    		end
			
			def create
				dog = Dog.new(dog_params)
				if dog.save
					render json: dog.to_json(:include => [:breed]) 
				else
					render json: dog.errors
				end
			end

			def show
				dog = Dog.find(params[:id])
				render json: dog.to_json(:include => [:breed, :photos])
			end

			def random
				dog = Dog.order('RAND()').limit(params[:max])
				render json: dog.to_json(:include => [:breed, :photos])
			end

			def random_by_breed
				dog = Dog.where('breed_id = ?', params[:breed_id]).order('RAND()').first
				render json: dog.to_json(:include => [:breed, :photos])
			end

			private

			def dog_params
				params.permit(:name, :breed_id)
			end
    
    	end
	end
end
