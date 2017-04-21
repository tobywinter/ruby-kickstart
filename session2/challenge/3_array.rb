# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  	index = -1
  	string_arr = split("").reject { |letter| (index+=1).odd?  }
  	string_arr.join("")
  end
end

p "Four score and seven years ago...".every_other_char