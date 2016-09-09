module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily
    "I am in love with ice cream!!!!"
  end
end

require_relative 'Shout'
Shout.yell_angrily('Im going to ask you a bunch of questions')