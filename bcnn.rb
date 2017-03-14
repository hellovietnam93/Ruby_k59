def gcd a, b
	if b == 0
		a
	else
		gcd b, a%b
	end
end

#puts gcd 16,10

def lcm a, b
	a*b/(gcd a, b)
end

puts lcm 4, 6
def lcm_arr arr
	if (arr.length > 2)	
		last = arr.last
		arr.pop
		lcm (lcm_arr arr).to_i, last
	elsif (arr.length == 2)
		lcm arr[0], arr[1]
	end
end

arr = [2, 6, 2, 1, 32]
#puts arr.pop
#puts arr
puts lcm_arr arr



