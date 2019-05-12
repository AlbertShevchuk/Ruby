class Array
	
	def initialize(a,b,c,d,e,f,g,h,i,j)
		@arr = [a,b,c,d,e,f,g,h,i,j]			
	end
	
	def limited(amin,amax)  #true if amin<=[i]<=amax
	i = 1	
		0.upto @arr.length do
			if @arr[i] >= amin	
				if @arr[i] <= amax	
					return "true"
				end
			end
		i += 0
		end		
	end
	
	def sorted?					
		if @arr == @arr.sort
			return "+1"
		end
		if @arr == @arr.sort.reverse
			return "-1"
		end	
		return 0
	end
	
end

#print("n\amin: ")
#x = gets
#print("\namax: ")
#y = gets

nw = Array.new 1,2,3,4,5,6,7,8,9,10
puts nw.limited(1,10)
puts nw.sorted?




