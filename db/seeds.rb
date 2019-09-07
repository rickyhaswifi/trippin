# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do 
    trip = Trip.create(
      name: Faker::Kpop.boy_bands
    )
  
    10.times do
      location = Location.create(
        first_name: Faker::FunnyName.name,
        last_name: Faker::Name.last_name
      )
  
      Enrollment.create(
        role: roles.sample,
        course_id: course.id,
        user_id: user.id
      )
    end
  end
  
  puts 'Data seeded.'