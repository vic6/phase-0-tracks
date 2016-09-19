# Virus Predictor

# I worked on this challenge [Peter Victor Matthews ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative references a file that is in the same folder as the file using require relative
# Require needs a more specific location of the file being referenced but it doesn't need to be in folder
require_relative 'state_data'

class VirusPredictor
    #makes variables accessable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
    #uses other methods to show data
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #THEIR OLD METHOD  
  # def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if @population_density >= 200           
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif @population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif @population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif @population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
#uses population density to calculate predicted deaths
  #OUR REFACTORED METHOD
  def predicted_deaths
    multiplier = 0
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor
  # end
     print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
    #uses population density to determine how many months it will take to spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    #ATTEMPTED REFACTOR
    # (0..@population_density).inject do |sum, num |
    #   if sum >= 50
    #     sum = 0
    #     speed -= 0.5
    #   end
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

def all_states(hash)
  hash.each do |state, data|
    results = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    results.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 all_states(STATE_DATA)

# alabama = VirusPredictor.new
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
