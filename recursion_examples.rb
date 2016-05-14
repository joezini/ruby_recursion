def factorial(n)
	if n <= 1
		1
	else
		n * factorial(n-1)
	end
end

puts factorial(4)
puts factorial(0)

def palindrome?(string)
	if string.length <= 1
		true
	else
		string[0] == string[-1] && palindrome?(string[1..-2])
	end
end

puts palindrome?("octagon")      # false
puts palindrome?("aibohphobia")  # true
puts palindrome?("eke")          # true

def bottles(n)	
	if n == 0
		"no more bottles of beer on the wall."
	else
		"#{n} bottles of beer on the wall, " + bottles(n-1) 
	end
end

puts bottles(5)

def fib(n)
	if n <= 1
		n
	else
		fib(n-1) + fib(n-2)
	end
end

puts fib(1)
puts fib(6)
puts fib(20)

def flatten(arr)
	result = []
	arr.each_with_index do |el, i|
		if el.is_a?(Array)
			result += flatten(el)
		else
			result << el
		end
	end
	result
end

print flatten([1,2,[3,4],5,6])
print flatten([1, 2, [3, [4, 5]]])
print flatten([1, 2, 3])
print flatten([1, [2], 3])

def int_to_roman(int)
	decimal_to_roman_mapping = {
	  1000 => "M",
	  900 => "CM",
	  500 => "D",
	  400 => "CD",
	  100 => "C",
	  90 => "XC",
	  50 => "L",
	  40 => "XL",
	  10 => "X",
	  9 => "IX",
	  5 => "V",
	  4 => "IV",
	  1 => "I"
	}

	if int > 0
		this_char = ""
		rem = 0
		decimal_to_roman_mapping.each do |k, v|
			if int >= k
				this_char = v
				rem = int - k
				break
			end
		end
		this_char << int_to_roman(rem)
	else
		""
	end
end

puts int_to_roman(2)
puts int_to_roman(7)
puts int_to_roman(55)
puts int_to_roman(643)

def roman_to_int(rom)
	roman_mapping = {
	  "M" => 1000,
	  "CM" => 900,
	  "D" => 500,
	  "CD" => 400,
	  "C" => 100,
	  "XC" => 90,
	  "L" => 50,
	  "XL" => 40,
	  "X" => 10,
	  "IX" => 9,
	  "V" => 5,
	  "IV" => 4,
	  "I" => 1
	}

	result = 0
	rem = ""

	if rom.length > 0
		roman_mapping.each do |k, v|
			if rom.index(k) == 0
				result += v
				rem = rom.sub(k, "")
				break
			end
		end
		result += roman_to_int(rem)
	else
		0
	end
	result
end

puts roman_to_int("III")
puts roman_to_int("IX")
puts roman_to_int("XXXXVI")
puts roman_to_int("MDLIX")