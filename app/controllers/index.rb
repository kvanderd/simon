require "json"
get '/' do
  # Look in app/views/index.erb
  puts "i am in get"
  erb :index
end

post '/color' do
  content_type :json
  #Create and return a JSON object with the random cell and color given below.
  puts "I am in post"
  cell= rand(1..9)
  color= "#" + "%06x" % (rand * 0xffffff)
 {cell: cell, color: color}.to_json
 
end
