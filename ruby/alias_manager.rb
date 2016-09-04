#FIRST ATTEMPT
#prompt for real name
# swap first and last name
# split characters, if a vowel, change to next vowel, if consonants, switch to next consonant


def nameSwitch(name)
  vowels = 'aeiou'
  new_name = ''
  newname = name.split(' ').reverse.join(' ')
end

def character(str)
  str = nameSwitch(str)
  vowels = 'aeiouAEIOU'
  consonants = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  newStr = ''
  str = str.chars
  for letter in str 
    if vowels.include? letter
      if letter == 'u'
        letter = 'a'
        newStr << letter
      else letter = vowels[vowels.index(letter) + 1]
        newStr << letter
      end
    elsif consonants.include? letter
      if letter == 'z'
        letter = 'b'
        newStr << letter
      else letter = consonants[consonants.index(letter) + 1]
        newStr << letter
      end
    else
      newStr << letter
    end
  end
  newStr
end

name_list = []

loop do 
  puts "Enter your name to find out your alias(type 'quit' or enter to finish): "
  name = gets.chomp
  if name == '' or name == 'quit'
    break
  end
  name_list << name
  puts
end

for name in name_list
  puts "#{name}, your alias is #{character(name)}"
end

