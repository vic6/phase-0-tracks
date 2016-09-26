require 'sqlite3'
require 'date'

#create db
$db = SQLite3::Database.new('workout.db')

create_table_cmd = <<-SQL 
  DROP TABLE IF EXISTS Workouts;
  DROP TABLE IF EXISTS Exercise;


  CREATE TABLE Workouts(
    id INTEGER PRIMARY KEY,
    date TEXT,
    sets INTEGER,
    reps INTEGER,
    weight INTEGER,
    exercise_id INTEGER
    );

  CREATE TABLE Exercise(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
    name TEXT UNIQUE
    );
SQL

$db.execute_batch(create_table_cmd)

# def exercise(name)
#   if name 
# end
$db.execute("INSERT INTO Exercise (name) VALUES ('lockdog press')")
#db.execute("INSERT INTO Exercise (name) VALUES ('lockdog press')")

#exercises = db.execute("SELECT name FROM Exercise")


#ex = [[1, "lockdog press"]]
# ex.each do |exer|
#   if name == exer[1]
#     print 'already there'
#   end
# end

def add_exercise(name)
  #want to check for duplicates, will attempt later
  #exercises = db.execute("SELECT name FROM Exercise")
  #exercises.each do |ex|
    #if name != ex[0]
  $db.execute("INSERT OR IGNORE INTO Exercise (name) VALUES (?)", [name])
end


#
def add_intensity(exercise, date, sets, reps, weight)
  exercise_id = $db.execute("SELECT Exercise.id FROM Exercise WHERE Exercise.name = '#{exercise}'")
  if not exercise_id.empty? 
    $db.execute("INSERT INTO Workouts (date, sets, reps, weight, exercise_id) VALUES (?, ?, ?, ?, ?)", [date, sets, reps, weight, exercise_id])
  end
  if exercise_id.empty?
    print "Exercise not found."
  end
end

# add_intensity('carndogs', '02/12/1989', 5, 10, 250)
# add_intensity('boss popsdf', '02/12/1989', 5, 10, 250)


def display
  print_out = $db.execute("SELECT Exercise.name, Workouts.date, Workouts.weight FROM Workouts JOIN Exercise ON Exercise.id = Workouts.exercise_id ")
  #print print_out
  puts "Date: #{print_out[0][1]}"
  puts "Exercise: #{print_out[0][0]}"

end

# puts exercise_id


#prompt user if they would like to add exercise or update existing workout

input = nil
until input == 'exit'
  puts "Would you like to add(add) an exercise?(Type 'exit' to quit.)"
  input = gets.chomp
  if input == 'add'
    puts "Enter the name of the exercise."
    name = gets.chomp
    add_exercise(name)
    day = DateTime.now
    date = day.strftime "%m/%d/%Y"
    puts "Enter the sets, reps and weight in lbs in this format(ex: 4 sets of 12 with 200)"
    intensity = gets.chomp.split(' ')
    sets = intensity[0]
    reps = intensity[3]
    weight = intensity[-1]
    add_intensity(name, date, sets, reps, weight)
  end
end


display