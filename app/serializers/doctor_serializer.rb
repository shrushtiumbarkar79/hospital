class DoctorSerializer < ActiveModel::Serializer
	
	attributes *[
		:id,
		:name
		
	]


	def image
	    rails_blob_path(object.image, only_path: true) if object.image.attached?
	  end
end

