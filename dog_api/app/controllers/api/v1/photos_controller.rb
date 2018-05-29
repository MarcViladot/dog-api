module Api
	module V1
		class PhotosController < ApplicationController
			
			def index
				photos = Photo.all
				render json: photos
			end

			def create
				photo = Photo.new(photo_params)
				if photo.save
					render json: photo
				else
					render json: photo.errors
				end
			end

			def show
				photo = Photo.find(params[:id])
				render json: photo
			end

			def random
				photo = Photo.order("RAND()").limit(params[:max])
				render json: photo
			end

			private

			def photo_params
				params.permit(:url, :dog_id)
			end
    
    	end
	end
end