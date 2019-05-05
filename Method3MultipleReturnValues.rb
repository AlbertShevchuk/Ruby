def return2(x,y)
	return x+y , x*y
end

puts return2(7, 3) ; puts

result = return2(7,3)
puts result[1] ; puts

def qe(a,b,c)
	x1 = (-b + Math::sqrt(b**2-4*a*c))/(2*a)
	x2 = (-b - Math::sqrt(b**2-4*a*c))/(2*a)
	return x1,x2
end

puts "Solving x**2 - 3x + 2 = 0"
x1, x2 = qe(1, -3, 2)
puts "x1 = #{x1}   x2 = #{x2}"
