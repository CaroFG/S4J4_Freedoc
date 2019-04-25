# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all


25.times do 
city = City.create(name: Faker::Address.city)	
doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: city)
patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
appointment = Appointment.create(doctor: doctor, patient: patient, date: Faker::Time.forward(30, :day), city: city)
specialty = Specialty.create(name: ["cardiology", "gynecology", "family and general medicine"].sample)
join_table_doctor_specialty = JoinTableDoctorSpecialty.create!(doctor: doctor, specialty: specialty)
end
