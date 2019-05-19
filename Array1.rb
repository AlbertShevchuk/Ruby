def makearray(size)
	a=Array.new
	size.times{|k| a[k]=rand(10)}
	return a
end

def sorted?(a)
	if a == a.sort
		print "array is sorted"
	else
		print "array is not sorted \n\n"
	end
end

def show(a)
	a.length.times \
	{|i|
		print ' ' if a[i] < 10
		print ' ', a[i]
		puts if (i+1)%20 == 0
	}
	puts
end

a = makearray(200)
show(a)
sorted?(a)
a.sort!
show(a)
sorted?(a)