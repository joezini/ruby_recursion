def fibs(num)
	result = []
	(0..num-1).each do |i|
		if i <= 1
			result << 1
		else
			result << result[i-1] + result[i-2]
		end
	end
	result
end

puts fibs(10)

def fibs_rec(num)
	def fib(x)
		if x <= 1
			1
		else
			fib(x-1) + fib(x-2)
		end
	end
	result = []
	(0..num-1).each do |i|
		result << fib(i)
	end
	result
end

puts fibs_rec(11)