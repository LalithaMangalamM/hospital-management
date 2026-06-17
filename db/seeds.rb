# Hospitals
hospital1 = Hospital.create!(name: "City General Hospital", address: "12 Main Street", city: "Mumbai", phone: "022-12345678", email: "info@citygeneral.com", active: true)
hospital2 = Hospital.create!(name: "Sunrise Medical Center", address: "45 Park Avenue", city: "Pune", phone: "020-87654321", email: "contact@sunrisemedical.com", active: true)

# Doctors — 2 per hospital
doctor1 = Doctor.create!(hospital_id: hospital1.id, first_name: "Arjun",  last_name: "Mehta",    email: "arjun.mehta@citygeneral.com",      phone: "9876543210", active: true)
doctor2 = Doctor.create!(hospital_id: hospital1.id, first_name: "Priya",  last_name: "Sharma",   email: "priya.sharma@citygeneral.com",      phone: "9876543211", active: true)
doctor3 = Doctor.create!(hospital_id: hospital2.id, first_name: "Rohit",  last_name: "Verma",    email: "rohit.verma@sunrisemedical.com",    phone: "9876543212", active: true)
doctor4 = Doctor.create!(hospital_id: hospital2.id, first_name: "Sneha",  last_name: "Kulkarni", email: "sneha.kulkarni@sunrisemedical.com", phone: "9876543213", active: true)

# Doctor Profiles — one per doctor
DoctorProfile.create!(doctor_id: doctor1.id, experience_years: 10, qualifications: "MBBS, MD",  languages_spoken: "English, Hindi",          consultation_fee: "500", available_days: "Mon-Fri", available_from: "09:00", available_to: "17:00")
DoctorProfile.create!(doctor_id: doctor2.id, experience_years: 7,  qualifications: "MBBS, MS",  languages_spoken: "English, Marathi",        consultation_fee: "600", available_days: "Mon-Sat", available_from: "10:00", available_to: "18:00")
DoctorProfile.create!(doctor_id: doctor3.id, experience_years: 12, qualifications: "MBBS, DM",  languages_spoken: "English, Hindi, Marathi", consultation_fee: "700", available_days: "Mon-Fri", available_from: "08:00", available_to: "16:00")
DoctorProfile.create!(doctor_id: doctor4.id, experience_years: 5,  qualifications: "MBBS, DNB", languages_spoken: "English, Kannada",        consultation_fee: "450", available_days: "Tue-Sat", available_from: "11:00", available_to: "19:00")

# Patients
patient1 = Patient.create!(first_name: "Amit",   last_name: "Joshi",  email: "amit.joshi@gmail.com",  phone: "9000000001", date_of_birth: "1990-05-14", gender: "male",   address: "101 Lake View", city: "Mumbai", state: "Maharashtra")
patient2 = Patient.create!(first_name: "Kavya",  last_name: "Nair",   email: "kavya.nair@gmail.com",  phone: "9000000002", date_of_birth: "1995-08-22", gender: "female", address: "202 Hill Road",  city: "Pune",   state: "Maharashtra")
patient3 = Patient.create!(first_name: "Rahul",  last_name: "Desai",  email: "rahul.desai@gmail.com", phone: "9000000003", date_of_birth: "1988-01-10", gender: "male",   address: "303 Baner Road", city: "Pune",   state: "Maharashtra")
patient4 = Patient.create!(first_name: "Meena",  last_name: "Pillai", email: "meena.pillai@gmail.com",phone: "9000000004", date_of_birth: "2000-11-30", gender: "female", address: "404 MG Road",    city: "Mumbai", state: "Maharashtra")
patient5 = Patient.create!(first_name: "Suresh", last_name: "Patil",  email: "suresh.patil@gmail.com",phone: "9000000005", date_of_birth: "1975-03-18", gender: "male",   address: "505 FC Road",    city: "Pune",   state: "Maharashtra")

# Appointments — 2 for Hospital 1, 3 for Hospital 2
Appointment.create!(doctor_id: doctor1.id, patient_id: patient1.id, scheduled_at: "2026-06-20 10:00:00", status: "confirmed", notes: "Routine checkup")
Appointment.create!(doctor_id: doctor2.id, patient_id: patient2.id, scheduled_at: "2026-06-21 11:00:00", status: "pending",   notes: "Follow-up visit")
Appointment.create!(doctor_id: doctor3.id, patient_id: patient3.id, scheduled_at: "2026-06-22 09:00:00", status: "confirmed", notes: "Blood pressure review")
Appointment.create!(doctor_id: doctor4.id, patient_id: patient4.id, scheduled_at: "2026-06-23 14:00:00", status: "pending",   notes: "Diabetes consultation")
Appointment.create!(doctor_id: doctor3.id, patient_id: patient5.id, scheduled_at: "2026-06-24 10:30:00", status: "confirmed", notes: "Post-surgery follow-up")
