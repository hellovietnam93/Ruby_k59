def bcnn a,b
	return (a * b)/(ucln a,b)
end

def bcnn_of_array array
  result = 1
	if array.length > 0
		array.each do | item|
			result = bcnn result,item
		end
	end
	return result/(ucln_of_array array)
end

array = [5,6,30]
puts bcnn_of_array array
