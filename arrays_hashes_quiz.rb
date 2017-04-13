### A. Given the following data structure:
require "awesome_print"

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']


# # 1. Work out how many stops there are in the array
# puts lines.length()
puts "Question 1"
puts lines.length()
puts lines.size()
puts lines.count()


# # 2. Return 'Edinburgh Park' from the array
puts "Question 2"
puts lines[1]

# # 3. How many ways can we return 'Princes Street' from the array?
puts "Question 2"
puts lines [4]
puts lines.last()
puts lines [-1]
puts lines.at(4)
puts lines.fetch(4)
puts lines.fetch(10,"no train station found")


# 4. Work out the index position of 'Haymarket'
puts "Question 4"
puts lines.index("Haymarket")

counter = 0
for stop in lines do
  if stop == "Haymarket"
    puts counter
  else
    counter += 1
  end
end

# 5. Add 'Airport' to the start of the array

puts "Question 5"

puts lines.unshift("Airport") 
puts "=================="
lines.insert(0, "Airport")
puts lines


# 6. Add 'York Place' to the end of the array
puts "Question 6"
ap lines << "York Place "


# 7. Remove 'Edinburgh Park' from the array using it's name
puts "Quesstion 7"
lines.delete("Edinburgh Park")
ap lines


# 8. Delete 'Edinburgh Park' from the array by index
puts "Question 8"
puts lines.delete_at(1)
ap lines


# puts lines.delete_at(1)
# 9. Reverse the positions of the stops in the array
puts "Question 9"
ap lines
puts lines.reverse()
ap lines


### B. Given the following data structure:


my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# # 1. How would you return the string `"One"`?
puts "Question 1"
puts my_hash[1]

# # 2. How would you return the string `"Two"`?
puts "Question 2"
puts my_hash[:two]

# # 3. How would you return the number `2`?
puts "Question 3"
puts my_hash ["two"]

# # 4. How would you add `{3 => "Three"}` to the hash?
puts "Question 4"
ap my_hash
puts my_hash[3] = "Three"
ap my_hash

# # 5. How would you add `{:four => 4}` to the hash?

puts "Question 5"
ap my_hash
puts my_hash[:four] = 4
ap my_hash

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts"Qusstion 1"#
puts users["Jonathan"][:twitter]

# # 2. Return Erik's hometown
puts "Question 2"
puts users["Erik"][:home_town]

# # 3. Return the array of Erik's favorite numbers
puts "Question 3"
puts users["Erik"][:favourite_numbers]

# # 4. Return the type of Avril's pet Colin
puts "Question 4"
puts users["Avril"][:pets]["colin"]

# 5. Return the smallest of Erik's favorite numbers

puts "Question 5"
puts users["Erik"][:favourite_numbers].sort().first()
puts users["Erik"][:favourite_numbers].min()


# # 6. Add the number `7` to Erik's favorite numbers
puts "Question 6"
ap users["Erik"][:favourite_numbers]
ap users["Erik"][:favourite_numbers].push(7)
ap users["Erik"][:favourite_numbers]

# 7. Change Erik's hometown to Edinburgh
puts "Question 7"
ap users["Erik"][:home_town]
ap users["Erik"][:home_town] = "Edinburgh"
ap users["Erik"][:home_town]



# # 8. Add a pet dog to Erik called "Fluffy"
puts "Question 8"
ap users["Erik"][:pets]
puts "++++++"
ap users["Erik"][:pets]["Fluffy"] = :dog
puts "++++++"
ap users["Erik"][:pets]


# 9. Add yourself to the users hash
puts "Question 9"

ap users["gill"] = {
  :twitter => "Glidd",
  :favourite_numbers => [3,5,8],
  :home_town => "Aberdeen",
  :pets => {
    "nibbles" => :rabbit,
    "honey" => :dog}
  }
ap users


