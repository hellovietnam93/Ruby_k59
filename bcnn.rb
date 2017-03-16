def bcnn a,b
	return (a * b)/(ucln a,b)
end

def ucln a,b
	if b == 0
		return a
	else
		return ucln(b,a%b)
	end
end

def bcnn_of_array array
  result = 1
	if array.length > 0
		array.each do | item|
			result = bcnn result,item
		end
	end
	return result
end

array = [5,6,48]
puts bcnn_of_array array
