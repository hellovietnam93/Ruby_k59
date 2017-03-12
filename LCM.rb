def gcd(a,b)
	while a != b && a > 0 && b > 0
		if a > b
			a=a-b
		else
			b=b-a
		end
	end
	a
end

def lcm(a,b)
	a*b/gcd(a,b)
end

arr = [3,3,3,6,9]
x=lcm(arr[0],arr[1])
arr.each do |e|
	x=lcm(x,e)
end

puts x