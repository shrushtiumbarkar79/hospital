class Doctor < ApplicationRecord
	has_many :appointmnets
	has_many :patients , through: :appointments
	# has_one_attached :image
end
