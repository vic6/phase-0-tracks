# Method to create a list
def create_list(list)
  grocery_list = {}
  list_array = list.split(' ')
  list_array.each do |item|
    grocery_list[item] = 1
  end
  print_list(grocery_list)
  grocery_list
end
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  #create empty hash
  #split the list
  #iterate items from array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity, hash
# steps: if item not in hash add item, otherwise add 1 to quantity
# output: hash
def add_item(hash, item, quantity=1)
  hash[item] = quantity
  hash
end

# Method to remove an item from the list
# input: item to be removed, hash
# steps: if item is in hash, remove item, else print item not in list
# output: hash
def remove_item(hash, item)
  hash.delete(item)
  hash
end
# Method to update the quantity of an item
# input: hash, item, quantity = 1
# steps: if item is in hash, update quantity 
# output: hash
def update(hash, item, quantity=1)
  hash[item] = quantity
  hash
end
# Method to print a list and make it look pretty
# input: grocery_list
# steps: iterate over list, print out item and quantity
# output: formatted grocery list
def print_list(grocery_list)
  grocery_list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
  puts '---------------------'
end
anohter_new_list = create_list("carrots apples cereal pizza")

new_list = create_list("carrots apples cereal pizza")
print_list(new_list)
add_item(new_list, 'lemonade', 2)
print_list(new_list)
remove_item(new_list, 'carrots')
print_list(new_list)
update(new_list, 'apples', 5)
print_list(new_list)


print_list(anohter_new_list)






