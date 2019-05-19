def tail(a)
	a[1 .. a.length-1]
end

def sum(a)
	if a.length == 0
		0
	else
		a[0]+sum(tail(a))
	end
end

a = ([1,2,3,4])
p a, sum(a),tail(a),sum(tail(a))