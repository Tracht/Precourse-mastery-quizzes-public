# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.

#   by commas with no spaces.
# Step 1: Ask user how many groups
puts "How many groups?"
groups = gets.chomp.to_i
list = Array.new
name = ""

# Step 2: Ask user to enter names, push to a list
loop do
  puts "Enter a name."
  name = gets.chomp
  list.push(name)
  break if name == "stop"
end
list.pop
print list
puts ""

# Step 3: Ask user to select group number
number = ""
array_increase = 0

loop do
  puts "Select a group."
  number = gets.chomp
  if number != "stop"
    number = number.to_i
    # Step 4: Generate new list
    group_list = Array.new.push(list[number - 1])
    # Step 5: Expand the list
    loop do
      if groups == 1
        array_increase += number
        break if array_increase >= list.length
        group_list.push(list[array_increase])
      elsif groups > 1
        array_increase += groups - 1
        break if array_increase + number >= list.length
        group_list.push(list[number + array_increase])
      end
    end
    print group_list.join(", ")
    puts ""
    group_list.clear
    array_increase = 0
  elsif number == "stop"
    break
  end
end
