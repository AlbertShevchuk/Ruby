class Triangle

	def initialize(x,y,z)
		@a = x.to_f
		@b = y.to_f
		@c = z.to_f
		@right = "no"
	end
	
	def test
		if ((@a + @b <= @c) || (@b + @c <= @a) || (@c + @a <= @b))
			puts "this can not be a triangle"
			exit
		end
		if ((Math.sqrt((@a**2)+(@b**2)) == @c) || (Math.sqrt((@b**2)+(@c**2)) == @a) || (Math.sqrt((@a**2)+(@c**2)) == @b))
			@right = "yes"
			print "right "
		end
		if @a == @b && @b == @c && @c == @a
			puts @classifier = "equilateral"
		end
		if (((@a == @b) && (@b != @c))  || ((@b == @c) && (@c != @a)) || ((@a == @c) && (@c != @b))) 
			puts @classifier = "isosceles"
		end
		if @a != @b && @b != @c && @c != @a
			puts @classifier = "scalene"
		end
	end

	def perimeter
		@a + @b + @c
	end
	
	def area
		if (@right == "yes") 
			if(Math.sqrt((@a**2)+(@b**2)) == @c)
				return ((@a*@b)/2)
			end
			if(Math.sqrt((@b**2)+(@c**2)) == @a)
				return ((@b*@c)/2)
			end
			if(Math.sqrt((@a**2)+(@c**2)) == @b)
				return ((@a*@b)/2)
			end		
		end
		
		if(@classifier == "equilateral")
			return (Math.sqrt((@a**2)-((@a**2)/4))*(@a/2))
		end
		
		if(@right == "no")
			if(@classifier == "isosceles")
				if((@a == @b) && (@b != @c))
					return (Math.sqrt((@a**2)-((@c**2)/4))*(@c/2))
				end
				if((@b == @c) && (@c != @a))
					return (Math.sqrt((@b**2)-((@a**2)/4))*(@a/2))
				end
				if((@a == @c) && (@c != @b))
					return (Math.sqrt((@a**2)-((@a**2)/4))*(@a/2))
				end
			end
			if(@classifier == "scalene")
				return(Math.sqrt((self.perimeter/2)*((self.perimeter/2)-@a)*((self.perimeter/2)-@b)*((self.perimeter/2)-@c)))
				#Heron's Formula ^
			end	
		end
	end
end	

nw = Triangle.new 50,60,70
nw.test
puts "perimeter: " + nw.perimeter.to_s
puts "area: " + nw.area.to_s



