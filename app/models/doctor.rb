class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	has_many :specialties, through: :join_table_doctor_specialties
	belongs_to :city
end
