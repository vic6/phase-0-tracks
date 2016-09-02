#FIRST ATTEMPT
#prompt for real name
# swap first and last name
# spilt charactors, if a vowel, change to next vowel, if consonants, switch to next consonant


def nameSwitch(name)
  vowels = 'aeiou'
  new_name = ''
  newname = name.split(' ').reverse.join(' ')
end

def charactor(str)
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

p charactor('Felicia Torres')

