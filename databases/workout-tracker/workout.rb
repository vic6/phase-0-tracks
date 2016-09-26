require 'sqlite3'

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


ex = [[1, "lockdog press"]]
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



add_exercise('carndogs')
add_exercise('pie-ups')
add_exercise('chin-ups')
add_exercise('boss pops')
add_exercise('carndogs')

#
def add_intensity(exercise, date, sets, reps, weight)
  exercise_id = $db.execute("SELECT Exercise.id FROM Exercise WHERE Exercise.name = '#{exercise}'")
  $db.execute("INSERT INTO Workouts (date, sets, reps, weight, exercise_id) VALUES (?, ?, ?, ?, ?)", [date, sets, reps, weight, exercise_id])
end

add_intensity('lockdog press', '2/12/1989', 4, 10, 50)
# puts exercise_id

#puts $db.execute("SELECT Exercise.id FROM Exercise WHERE Exercise.name = 'pie-ups'")
#
