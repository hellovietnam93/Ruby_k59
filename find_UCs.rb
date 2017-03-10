#tim tat ca cac uoc cua 1 so
def find_us a
	array = []
	(1..a).to_a.each {|i| array << i if a % i == 0}
	return array
end
print "Tat ca cac uoc cua 10 la: "
p find_us 10

#tim uoc chung cua 2 so
def uc a, b
	find_us(a) & find_us(b)
end
print "Uoc chung cua 10 va 20 la: "
p uc 10, 20

#tim uoc chung lon nhat cua 2 so
def max_uc a, b
	b == 0 ? a : max_uc(b,a%b)
end
print "UCLN cua 10 va 20 la: "
p max_uc 10, 20

#tim boi chung nho nhat: tich 2 so chia UCLN
def find_bcnn a, b
	bcnn = max_uc a, b
	(a*b)/bcnn
end
print "BCNN cua 10 va 20 la: "
p find_bcnn 10, 20

#tim uoc chung lon nhat cua 1 mang
def find_ucln_of_array array
	a = max_uc array[0], array[1]
	for i in (2...array.size) do
		a = max_uc a, array[i]
	end
	return a
end
array = [28, 14, 7, 21, 13]
print "UCLN cua mang #{array} la: "
p find_ucln_of_array array

#tim BCNN cua 1 mang
def find_bcnn_of_array array
	a = find_bcnn array[0], array[1]
	for i in (2...array.size) 
		a = find_bcnn a, array[i]
	end
	return a
end
print "BCNN cua mang #{array} la: "
p find_bcnn_of_array array