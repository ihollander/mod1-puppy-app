require_relative '../config/environment'

def clear!
  puts `clear`
end

puts "Oh hai doggie! What's your name?"
print "Enter your name: "
puppy_name = gets.chomp

# current_user = Puppy.find_by("name like ?", puppy_name)
# Puppy.find_by(name: puppy_name)
# if current_user.nil?
#   current_user = Puppy.create(name: puppy_name)
# end
current_user = Puppy.find_or_create_by(name: puppy_name)

# TODO: what happens if we can't find a user?
clear!

# # p -> inpect the object (print with debugging info)
# p current_user
# # pp -> useful for nested objects
# # puts -> convert to a string (.to_s) and print with a new line
# puts current_user
# # print -> convert to a string (.to_s) and print
# print current_user

puts <<~TEXT
Welcome #{current_user.name}!
What would you like to do next?
1. View profile
2. View your visits
3. Create a visit
4. Delete a visit
TEXT

# puts "Welcome #{current_user.name}!"
# puts "What would you like to do next?"
# puts "1. View profile"
# puts "2. View your visits"
# puts "3. Create a visit"
# puts "4. Delete a visit"

print "Enter your selection: "
input = gets.chomp

clear!

case input
when "1"
  puts "Profile page"
when "2"
  puts "Here are all your visits:"
  current_user.visits.each do |visit|
    puts "#{visit.plant.common_name} | #{visit.scent_notes}"
  end
when "3"
  puts "Create Visit page"
  puts "Here's a list of all the plants: "
  # show the user a list of plants with ids
  Plant.all.each do |plant|
    puts "#{plant.id}. #{plant.common_name}"
  end
  # promt to select the id and scent notes
  print "Please enter a plant id: "
  plant_id = gets.chomp.to_i

  print "Please enter scent notes: "
  scent_notes = gets.chomp

  Visit.create(
    plant_id: plant_id, 
    puppy_id: current_user.id, 
    scent_notes: scent_notes
  )
when "4"
  puts "Remove Visit page"
end

binding.pry
