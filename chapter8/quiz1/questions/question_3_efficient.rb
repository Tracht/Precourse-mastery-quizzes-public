people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]
​
sport_sorted = {}
​
people.each do |player|
  sport = player["sport"]
  name = player["name"]
​
  if sport_sorted[sport] == nil
    sport_sorted[sport] = [name]
  else
    sport_sorted[sport].push(name)
  end
end
​
fruit_sorted = {}
​
people.each do |eater|
  fruit = eater["fruit"]
  name = eater["name"]
​
  if fruit_sorted[fruit] == nil
    fruit_sorted[fruit] = [name]
  else
    fruit_sorted[fruit].push(name)
  end
end
​
puts "Enter the category to search"
category_input = gets.chomp
​
if category_input == "sport"
  sport_sorted.each do |key, value|
    puts key
    puts value
  end
else
  fruit_sorted.each do |key, value|
    puts key
    puts value
  end
end
