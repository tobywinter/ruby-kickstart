# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
# 
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
# 
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
	string_to_return = ""
	string.length.times do |index|
		next if return_odds && index.even?
		next if !return_odds && index.odd? 
		string_to_return << string[index]
	end
	string_to_return
end

puts odds_and_evens("abcdefg",true)