class Triangle

	def initialize(x,y,z)
		@a = x.to_f
		@b = y.to_f
		@c = z.to_f
		@classifier = " "
	end
	
	def test
		if ((Math.sqrt((@a**2)+(@b**2)) == @c) || (Math.sqrt((@b**2)+(@c**2)) == @a) || (Math.sqrt((@a**2)+(@c**2)) == @b))
			@classifier = "right "		
		end
	
		if @a == @b && @b == @c && @c == @a
			puts @classifier += "equilateral"
		end
	
		if (((@a == @b) && (@b != @c))  || ((@b == @c) && (@c != @a)) || ((@a == @c) && (@c != @b))) 
			puts @classifier += "isosceles"
		end
		
		if @a != @b && @b != @c && @c != @a
			puts @classifier += "scalene"
		end
		
		
	
	end

	



end	

nw = Triangle.new 7,7,9.889949
nw.test


