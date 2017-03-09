def uc? arr, x
  arr.each do |i|
    if(i%x != 0)
      return false
    end
  end
  return true
end

def ucln array
  uc = []
  min_mem = array.min
  (1..min_mem).each do |x|
    if(uc?(array,x))
      uc << x
    end
  end
  puts uc.last
end

ucln([8,12,16])
