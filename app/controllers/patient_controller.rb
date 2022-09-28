class PatientController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		@data = Patient.new(name: params[:name])
		if @data.save
			render json: PatientSerializer.new(@data).serializable_hash, status: :ok
		else
			render json: {message: "something wrong"}
		end
	end






	# def show
	# 	@data = Patient.find(params[:id])
 #            render json: (@data), status: :ok 
        
 #    end

end
