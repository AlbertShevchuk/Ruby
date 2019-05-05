def swap(x,y)
	print x, " ", y, "\n"
	x,y = y,x
	print x, " ", y, "\n\n"
end

a = 1
b = 2
swap(a, b) 
print a, " ", b, "\n\n"

def sum(a,b)
	a+b
end

print sum(2,3), "\n\n"

def sum1
	$a+$b
end

$a = 5
$b = 7
print sum1, "\n"
