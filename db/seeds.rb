User.create!(full_name: "Jackie", email: "jackie@gmail.com", password: "123", type: "Student")
User.create!(full_name: "Dan", email: "dan@gmail.com", password: "123", type: "Mentor")
User.create!(full_name: "Jon", email: "jon@gmail.com", password: "123", type: "Student")
User.create!(full_name: "Julia", email: "julia@gmail.com", password: "123", type: "Mentor")


Appointment.create!(start_time: DateTime.now + 1.days, length: "60", mentor_id: 2, student_id: 1, phase: 3)
Appointment.create!(start_time: DateTime.now + 2.days, length: "30", mentor_id: 4, student_id: 3, phase: 3)


Appointment.create!(start_time: DateTime.now + 3.days, length: "60", mentor_id: 2, phase: 3)
Appointment.create!(start_time: DateTime.now + 4.days, length: "30", mentor_id: 2, phase: 3)


Topic.create!(name: "Ruby")
Topic.create!(name: "JavaScript")
Topic.create!(name: "Ajax")
Topic.create!(name: "Algorithms")
Topic.create!(name: "SQL")
Topic.create!(name: "Git")
Topic.create!(name: "CRUD")
