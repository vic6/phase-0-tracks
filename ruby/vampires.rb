
puts "Enter number of employees to be processed."
total = gets.chomp.to_i
count = 1
#for each employee, loop will run
while count <= total 
  #resets prob on each iteration
  prob = "Results Inconclusive"
  puts "Employee #{count}"
  puts "What is your name?"
  name = gets.chomp.downcase
  
  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  food = gets.chomp

  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp
  
  #age adds up and says yes to garlic and insurance
  if 2016 - year == age and (food == 'yes' or insurance == 'yes')
    prob = "Probably not a vampire."
  end
  #age doesn't add up and says no to garlic and insurance
  if 2016 - year != age.to_i and (food == "no" and insurance == 'no')
    prob = "Almost certainly a vampire."
  end
  #age doesn't add up and says no garlic or insurance
  if 2016 - year != age.to_i and (food == "no" or insurance == 'no')
    prob = "Probably a vampire."
  end
  if name == "drake cula" or name == "tu fang"
    prob = "Definitely a vampire."
  end

  #checks for allergies
  allergies = nil
  while allergies != "done"
    puts "Enter your allergies one at at time, when finished enter 'done'."
    allergies = gets.chomp
    #exits loop if allergen is sunshine
    if allergies == 'sunshine'
      prob = "Probably a vampire."
      break
    end
  end
  count += 1
  puts prob
  #add new line for readability
  puts
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
