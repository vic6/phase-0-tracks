#require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new('students.db')
db.results_as_hash = true

get '/' do 
  "#{params[:name]} is #{params[:age]} years old."
end

get '/contacts' do
  "www://icecreamboss.com"
end

# get '/students/:campus' do
#   campus = params[:campus]
#   students = db.execute("SELECT name FROM students WHERE campus = 'SF')"
#   students.to_s
# end


get '/students' do
  students = db.execute("SELECT name FROM students")
end