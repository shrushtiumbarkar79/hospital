class AppointmnetController < ApplicationController
	skip_before_action :verify_authenticity_token
	def create
		byebug
		@data = Appointmnet.new(doctor_id: params[:doctor_id],patient_id: params[:patient_id],doctor_name: params[:doctor_name],patient_name: params[:patient_name])
		if @data.present?
			render json: AppointmnetSerializer.new(@data).serializable_hash, status: :ok
		else
			render json: {message: "something wrong"}
		end
	end
	# def show
	# 	@data = Appointment.find(params[:id])
 #            render json: (@data), status: :ok 
        
 #    end

	
																																				
