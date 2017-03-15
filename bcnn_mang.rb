def ucln a,b
	if b == 0
		a
	else
		ucln b, a%b
	end
end

def bcnn a,b
	a*b / ucln(a, b)
end

# pop ra 2 phan tu cuoi cua mang
# push vao ucln cua 2 phan tu do
# den khi mang chi con 1 phan tu la bcnn
def bcnn_mang arr
	if arr.length == 0 
		nil
	elsif arr.length == 1
		arr[0]
	else
		a = arr.last
		arr.pop
		b = arr.last
		arr.pop
		c = bcnn a,b
		arr.push c
		bcnn_mang arr
	end
end

arr = [ 2, 14, 5, 8]
puts bcnn_mang arr
