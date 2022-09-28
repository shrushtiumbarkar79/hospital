class DoctorsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		@data = Doctor.new(name: params[:name],image: params[:image])
		if @data.save
			render json: DoctorSerializer.new(@data).serializable_hash, status: :ok
		else
			render json: {message: "something wrong"}
		end
	end

end

