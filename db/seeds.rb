
10.times do
  doctor = Doctor.create(
    name: Faker::Superhero.name
  )
 

 
  
end

puts "Data Seeded."