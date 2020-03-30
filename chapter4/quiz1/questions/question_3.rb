#!/Users/marijatrachtenberg/.rvm/rubies/ruby-2.6.5/bin/ruby
# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.
count = 0
prev1 = 0
prev2 = 1

array = [0, 1]

while count < 20
  count = count + 1
  current = prev1 + prev2
  array.push(current)
  prev1 = prev2
  prev2 = current
end

array.each do |x|
  puts x
end  
