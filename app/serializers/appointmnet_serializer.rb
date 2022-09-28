class AppointmnetSerializer < ActiveModel::Serializer
	attributes *[
		:doctor_id,
		:patient_id,
		:doctor_name,
		:patient_name
		
	]
end
