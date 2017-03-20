def ucln a, b
	b == 0 ? a : ucln(b, a % b)
end

def bcnn a, b
	result = a * b / (ucln a, b)
end

def bcnnofarray
	a = [1,2,3,4,5,6,7,8,9]
	
	if a.length == 1
		tmp = a[0]
	else
		tmp = a[0]
		for i in (1...a.length)
			tmp = bcnn(tmp, a[i])
		end
	end
	puts tmp

end

bcnnofarray