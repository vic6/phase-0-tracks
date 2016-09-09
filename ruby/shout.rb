# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yell_happily
#     "I am in love with ice cream!!!!"
#   end
# end

#require_relative 'Shout'
# Shout.yell_angrily('I\'m going to ask you a bunch of questions, and I want them to be answered immediately.')

#Release 3

module Shout
  def yell_angrily(words)
    puts words + "!!! :(" 
  end

  def yell_happily
    puts "I am in love with ice cream!!!"
  end
end

class Arnold
  include Shout
end

class IceCreamMan
  include Shout
end

john = Arnold.new
john.yell_angrily('I\'m going to ask you a bunch of questions, and I want them to be answered immediately.')

mr_swirly = IceCreamMan.new
mr_swirly.yell_happily