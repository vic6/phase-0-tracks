prob = "Results inconclusive"

puts "What is your name?"
name = gets.chomp.downcase!

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
food = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp

if 2016 - year == age and (food == 'yes' or insurance == 'yes')
  prob = "Probably not a vampire."
end

if 2016 - year != age.to_i and (food == "no" or insurance == 'no')
  prob = "Probably a vampire."
end

if 2016 - year != age.to_i and (food == "no" and insurance == 'no')
  prob = "Almost certainly a vampire."
end

if name == "drake cula" or name == "tu fang"
  prob = "Definitely a vampire."
end

p prob