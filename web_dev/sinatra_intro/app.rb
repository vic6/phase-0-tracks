# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
  "www://icecreamboss.com"
end

get '/great_job' do
  name = params[:name]
  name ? "Good job #{params[:name]}!" : "Good job"
  # if name
  #   "Good job #{params[:name]}!"
  # else
  #   "Good job!"
  # end
end

# get '/add_num' do
#   num1 = params[:num1]
#   num2 = params[:num2]
#   num3 = num1.to_i + num2.to_i
#   "The result is #{num3}"
# end

get '/:num1/add/:num2' do
  num3 = params[:num1].to_i + params[:num2].to_i
  "The sum is #{num3}"
end

get '/campus' do 
  campus = params[:campus]
  campus
  students = db.execute("SELECT * FROM students WHERE campus = '#{campus}'")
  response = " "
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end