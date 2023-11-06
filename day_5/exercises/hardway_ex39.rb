states = {
    "Oregon" => "OR",
    "Florida" => "FL",
    "California" => "CA",
    "New York" => "NY",
    "Michigan" => "MI"
}

cities = {
    "CA" => "San Francisco",
    "MI" => "Detroit",
    "FL" => "Jacksonville"
}

cities["NY"] = "New York"
cities["OR"] = "Portland"

puts "-" * 10
puts "NY State has: #{cities["NY"]}"
puts "OR State has: #{cities["OR"]}"

puts "-" * 10
puts "Michigan has: #{cities[states["Michigan"]]}"
puts "Florida has: #{cities[states["Jacksonville"]]}"

puts "-" * 10
states.each do |state, abbrev|
    puts "#{state} is abbreviated #{abbrev}"
end

puts "-" * 10
cities.each do |state, city|
    puts "#{state} has the city #{city}"
end

puts "-" * 10
states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abreviated #{abbrev} and has city #{city}"
end

puts "-" * 10
state = states["Texas"]

if !state
    puts "Sorry, no Texas"
end

city = cities["TX"]
city ||= "Does Not Exist"
puts "The city for the state 'TX' is :#{city}"
