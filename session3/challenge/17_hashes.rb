# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
 head = {:data => 1, :next => nil}
 head = {:data => 2, :next => head}
#

def print_list(list)
	while list
		puts list[:data]
		list = list[:next]
	end 
end


def print_list_in_reverse(list)
	list_arr = []
	while list
		list_arr << (list[:data])
		list = list[:next]
	end
	list_arr.reverse!.each { |i| p i  }

end


print_list_in_reverse head   # >> "1\n2\n"
