class Patient < ApplicationRecord
	has_many :appointmnets
	has_many :doctors , through: :appointments
end
