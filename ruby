#tim tat ca cac uoc cua 1 so
def find_us a
	array = []
	(1..a).to_a.each {|i| array << i if a % i == 0}
	p array
end
print "Tat ca cac uoc cua 10 la: "
find_us 10

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

#tim uoc chung lon nhat cua 1 mang

#tim BCNN cua 1 mang