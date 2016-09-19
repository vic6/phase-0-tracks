#Grocery list redo
=begin
list will be kept in hash
creating a new list with an array of items
items will have default value of one
user can then add, remove
=end

#create a hash to contain a grocery list

# def new_list(list_name)
#   new_list = {}
#   list_name = list_name.split(',')
#   p list_name
#   list_name.each { |item| new_list[item] = 1 }
#   new_list
# end

# def add_item(hash, item, quantity=1)
#   hash[item] = quantity
# end

# def remove_item(hash, item, quantity=1)
#   quantity <= hash[item] ? hash[item] -= quantity : puts('Unable to delete item.')
#   hash.delete(item) if hash[item] == 0
# end

# def print_list(hash)
#   hash.each do |item, q| 
#     puts "#{item}: #{q}"
#   end
# end

# groceries =  new_list('pie,ice cream,meth,paper')


# print_list(groceries)

class GroceryList
  attr_reader :items, :list
  def initialize(items='')
    @items = items.split(',')
    @list = {}
    @items.each do |item|
      list[item] = 1
    end
  end

  def add_item(item)
    @list[item] = 1
  end

  def remove_item(item)
    @list.delete(item)
  end

  def print_list
    @list.each do |key, value|
      puts "#{key}: #{value}"
    end
  end

end

my_list = GroceryList.new
my_list.add_item('cheese cake')
my_list.print_list















