def ucln  a ,b
	b == 0 ? a: ucln(b , a%b )
end

def bcnnArr arr
	arr1 = Array.new(arr)

	while arr1.length != 1 do
		arr1[0,2] = arr1[0] * arr1[1]
	end

	while arr.length != 1 do
	 arr[0,2] =  ucln(arr[0] , arr[1]) 
	end


	puts arr1[0]/arr[0]
	
end



arr = [8 ,4 , 32 ,64] 

bcnnArr arr
