Visit.destroy_all
Puppy.destroy_all
Plant.destroy_all

puts "🐕 Seeding pups..."
5.times do
  Puppy.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    age: rand(1..20)
  )
end

puts "🌴 Seeding plants..."
mg = Plant.create(
  size: "Medium",
  genus: "something sciency",
  common_name: "Morning Glory"
)

pa = Plant.create(
  size: "Small",
  genus: "Acacia",
  common_name: "Prairie Acacia"
)

at = Plant.create(
  size: "Real Big",
  genus: "treeus commonus",
  common_name: "A Tree"
)

puts "🛩 Seeding visits..."
Visit.create(
  plant_id: mg.id,
  puppy_id: Puppy.first.id,
  scent_notes: "Flowery"
)

Visit.create(
  plant_id: pa.id,
  puppy_id: Puppy.first.id,
  scent_notes: "Smells like prairie dogs? Not real dogs."
)

Visit.create(
  plant_id: at.id,
  puppy_id: Puppy.last.id,
  scent_notes: "Teen spirit"
)

puts "Done!"
