class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(name, gender, ethnicity, boc)
    puts "Initializing Santa instance..."
    @name = name
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @boc = boc
  end

  def speak
  puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "Thats was a good #{cookie}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
  end

  def about
    puts '-' * 15
    puts "Santa name: #{@name}"
    puts "Santa gender: #{@gender}"
    puts "Santa ethnicity: #{@ethnicity}"
    puts "Santa age: #{@age}"
    puts "This Santa likes #{@boc} in his egg nog"
    print @reindeer_ranking
    puts
    puts
    #puts '-' * 15
  end
end


# santas = []
# santas << Santa.new("agender", 'black')
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
# p santas
# odog = Santa.new('Odogg', 'Horse', 'Rasta', 'bath water' )
# odog.about
# odog.get_mad_at('Prancer')
# odog.about
# odog.gender = "Manchild"
# p odog.gender

#Release 4
names = "Ronni Rasheeda Cristy Marybeth Sheree Teddy Leonila Jeanetta Victoria Luella Crista Danielle Roxana Zona Nick Celsa Kera Valarie Corina Nova Nathanael Delia Gracia Herma Earnest Albina Delsie Breanne Meaghan Yolonda Lavelle Merlene Marianne Pandora Malissa Jutta Hassie Danial Librada Bart Gaylene Major Stormy Stanford Quinton Gaston Gustavo Lindsay Alvaro Cathrine"
names = names.split(' ')

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", 'black/white', 'white/black', 'hella black', 'hella white', 'neapolitan', 'rocky road', 'french vanilla']

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", 'trigender', 'quadgender', 'robot', 'manchild', 'superman', 'superwoman', 'ice cream cone', 'parking meter fluid', 'level 50 charizard']

boc = ['vodka', 'whiskey', 'gin', 'bourbon', 'tequila', 'schnapps', 'absinthe', 'bathwater', 'prune juice', 'sake', 'brandy', 'vermouth', 'listerine']

500.times do 
  santa = Santa.new(names.sample, example_genders.sample, example_ethnicities.sample, boc.sample)
  santa.age = rand(0..140)
  santa.about
end





# TESTING
# better_santas = []

# while true
#   print "Welcome to the Santa Clone-O-Tron 3000. Would you like to clone a Santa? "
#   answer = gets.chomp
#   break if answer == 'done'
#   print 'Enter Santa name. '
#   name = gets.chomp
#   print "Enter Santa gender. "
#   gender = gets.chomp
#   print "Enter Santa ethnicity. "
#   ethnicity = gets.chomp
#   print "Enter Santa egg nog booze of choice. "
#   boc = gets.chomp
#   name = Santa.new(name, gender, ethnicity, boc)
#   better_santas << name
# end

# puts better_santas
# better_santas.each { |santa| santa.about }











