def ucln a,b
	if b == 0
		return a
	else
		return ucln(b,a%b)
	end
end
#puts ucln 20,4

def ucln_of_array (array)
	i = 0
  
  if array.length > 0
		result = array[0]
		array.each do |item|
			result = ucln result,item
		end
	end
	return result
end

array = [5,6,30]
puts ucln_of_array array
