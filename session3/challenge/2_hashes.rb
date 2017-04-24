# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase (key)
	to_return = Hash.new
	1.upto key do |size|
		next if size.even?
		all = Array.new(size) { |size| size + 1 }
		evens = all.select { |n| n.even? }
		to_return[size] = evens
	end
	to_return
end


p staircase 1  # => {1 => []}
p staircase 2  # => {1 => []}
p staircase 3  # => {1 => [], 3 => [2]}
p staircase 4  # => {1 => [], 3 => [2]}
p staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
