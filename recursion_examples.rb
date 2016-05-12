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
	arr.each do |el|
		if el.is_a?(Array) 
			flatten(el)
		else
			result << el
		end
	end
	result
end

print flatten([1, 2, [3, [4, 5]]])
print flatten([1, 2, 3])

