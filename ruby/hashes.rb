#Initialize hash with client name, age, children, and them as keys, and blank values.
#Prompt user for input for each field
#Allow user to correct one key if necessary
#print hash

designer_clients = {
  name: '',
  age: ''.to_i,
  "Number of children" => '',
  theme: '',
  color: '',
  budget: '',
  "Complimentary wasp nest?" => '',
}

designer_clients.each do |key, value|
  print "#{key}: "
  key.to_sym
  designer_clients[key] = gets.chomp.to_sym
  #just to include a boolean in the hash
  if designer_clients[key] == "yes".to_sym ? designer_clients[key] = true : designer_clients[key] = false
  end
end

print "Enter a key to update or 'none' to finish: "
answer = gets.chomp.to_sym
if answer != "none".to_sym
  designer_clients.each do |key, value|
    if answer == key
      print "What value would you like to give to #{key}: "
      newValue = gets.chomp.to_sym
      designer_clients[key] = newValue
    end
  end
end

p designer_clients