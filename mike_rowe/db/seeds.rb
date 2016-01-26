# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
	Teacher.create(name: Faker::Name.name, email: Faker::Internet.email, password_digest: Faker::Internet.password, avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"))
end

20.times do
	Student.create(name: Faker::Name.name, gender: ["M", "F"].sample, age: Faker::Number.between(1, 14), grade: Faker::Number.between(1, 8), detentions: Faker::Number.between(0, 4), avatar: Faker::Avatar.image("my-own-slug", "50x50", "jpg"))
end



# monday = teacher.groups.build(date: "Monday")
# tuesday = teacher.groups.build(date: "Tuesday")
# wednesday = teacher.groups.build(date: "Wednesday")
# thursday = teacher.groups.build(date: "Thursday")
# friday = teacher.groups.build(date: "Friday")

# def student_assignment(date)
# 	teacher.groups(build(date: date))
# end
