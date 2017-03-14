def gcd a, b
	if b == 0
		a
	else
		gcd b, a%b
	end
end

#puts gcd 16,10

def gcd_arr arr
	gcd_a = arr[0]
	(1..arr.length).each {|i| gcd_a = gcd gcd_a, arr[i].to_i}
	gcd_a
end

arr = [12, 6, 9, 24, 15]
puts gcd_arr arr



