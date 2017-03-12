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

arr = [16,8,4,4,32]
x=gcd(arr[0],arr[1])
arr[2,4].each do |e|
	x=gcd(x,e)
end

puts x