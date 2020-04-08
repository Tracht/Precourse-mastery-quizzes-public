# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]
puts "Enter category to group people by"
input = gets.chomp
members_list = Array.new
sports = Array.new
fruits = Array.new

people.each do |x|
  sports.push(x["sport"])
  fruits.push(x["fruit"])
end
sports.uniq
fruits.uniq

if input == "sport"
  sports.each do |x|
    people.each do |y|
      y.each do |_k, v| # _k indicates it won't be used
        if x == v
          members_list.push(x)
          members_list.push(y["name"])
        end
      end
    end
  end
elsif input == "fruit"
  fruits.each do |i|
    people.each do |j|
      j.each do |_m, n| # _m indicates it won't be used
        if i == n
          members_list.push(i)
          members_list.push(j["name"])
        end
      end
    end
  end
end
puts members_list.uniq
