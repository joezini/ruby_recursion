def merge_sort(list)
	def merge(a, b)
		result = []
		until a.empty? && b.empty?
			if a.length == 0
				result += b
				b = []
			elsif b.length == 0
				result += a
				a = []
			elsif a[0] <= b[0]
				result << a.shift
			elsif b[0] < a[0]
				result << b.shift
			end
		end
		result
	end

	if list.length > 2
		mid = list.length / 2 - 1
		merge(merge_sort(list[0..mid]), merge_sort(list[mid+1..-1]))
	else
		if list.length == 2
			if list[0] < list[1]
				[list[0], list[1]]
			else
				[list[1], list[0]]
			end
		else
			[list[0]]
		end
	end
end

print merge_sort([2,5,3,6])
puts
print merge_sort([2,7,9,3,4,0,1,3,5,8])