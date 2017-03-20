def ucln a, b
	b == 0 ? a : ucln(b, a % b)
end

def uclnofarray
	a = [1,2,3,4,5,6,7,8,9]
	if a.length == 1
		tmp = a[0]
	else
		tmp = a[0]
		for i in (1...a.length)
			tmp = ucln(tmp, a[i])
		end
	end
	puts tmp
end

uclnofarray


