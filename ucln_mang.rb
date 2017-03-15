def ucln a,b
	if b == 0
		a
	else
		ucln b, a%b
	end
end

# pop ra 2 phan tu cuoi va push vao ucln cua 2 so do
# cho den khi mang chi con 1 phan tu => ucln
def ucln_mang arr
	if arr.length == 0
		nil	
	elsif arr.length == 1
		arr[0]
	else
		a = arr.last
		arr.pop
		b = arr.last
		arr.pop
		c = ucln a,b
		arr.push c
		ucln_mang arr
	end
end


arr = [8, 100, 4, 24]

puts ucln_mang arr