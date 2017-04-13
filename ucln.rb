def ucln  a ,b
	b == 0 ? a: ucln(b , a%b )
end

def uclnArr arr
	while arr.length != 1 do
	 arr[0,2] =  ucln(arr[0] , arr[1]) 
	end
	puts arr
end

arr = [8 ,16 ,24 ,80 ,88] 

uclnArr arr
		
	
