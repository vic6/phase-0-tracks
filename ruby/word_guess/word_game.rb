# Class
# init (word)
# string that holds a new word
# string that holds hidden word
# number of guess allowed based on word length
# is_over = false

# def guess(letter)
# list that hold all letters guessed
# if the letter is not not in word and is not in guessList subtract 1 from guess
# if letter is in word, covert secret string to letter at correct index

# def game_over
# if guesses = 0
# gameover == true
# print hummiliating messaged
# if secretword = word
# gameover == true
# print congratulating message


# def displayword
# print secretword

class Game
  attr_accessor
  def initialize()
    print "Enter a word: "
    @word = get.chomp
    @guesses_remaining = @word.length
    @hidden_word = "-" * @word.length
    @is_over = false
    @guessed_letters = []
    @proper_guess = false

  end

  def guess_check(guess)
    @proper_guess = false
    if not 'abcdefghijklmnopqrstuvwxyz'.include?(guess)
      puts 'Please enter a letter.'
    elsif @guessed_letters.include?(guess)
      puts "You already guessed that letter."
    else
      @proper_guess = true
    end
    @proper_guess
  end



  def guess(guess)
    if @proper_guess
      @guessed_letters << guess
      @word.split('').each_with_index do |letter, index|
        if letter == guess
          @hidden_word[index] = guess 
        end
      end

      if not @word.include?(guess)
        @guesses_remaining -= 1 
        puts "Wrong, Guesses Remaining: #{@guesses_remaining}"
        
      end
      p @hidden_word
    end
  end

  def get_guesses
    @guesses_remaining
  end

  def is_over?
    if @guesses_remaining == 0 or @word == @hidden_word
      @is_over = true
    end
    @is_over
  end

end



#TESTING
# word = 'hello'
# hidden_word = '-' * word.length

# p word 
# p hidden_word

# p (0...word.length).find_all {|i| word[i] == 'l' }

# p hidden_word

# while true
#   puts "Enter a letter. "
#   guess = gets.chomp
#   word.split('').each_with_index do |letter, index|
#     if letter == guess
#       hidden_word[index] = guess
#     end
#   end
#   puts hidden_word
# end

# p hidden_word


# DRIVER CODE

# test = Game.new

# puts "Number of guesses: #{test.get_guesses}"
# while test.is_over? != true
#   print "Guess a letter: "
#   guess = gets.chomp
#   test.guess_check(guess)
#   test.guess(guess)
#   puts
  
# end

# if test.get_guesses > 0
#   puts "Congratulations, You win!"
# else 
#   puts "Game over Loser!"
# end

























