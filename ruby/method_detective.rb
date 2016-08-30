# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".gsub(/\w/).with_index{|s, i| i.even? ? s.upcase : s.downcase}
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
# => “zoom”

p "enhance".ljust(11).rjust(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".split().push("suspects").join(' ')
#=> "the usual suspects"

p " suspects".insert(0, "the usual")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
#or
p "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# It is the ASCII code

p "How many times does the letter 'a' appear in this string?".count("a")
#or
p "How many times does the letter 'a' appear in this string?".scan(/a/).length
# => 4