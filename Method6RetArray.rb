def square(a)
	a.length.times{|i| a[i] = a[i] ** 2}
	return a
end

def show(a)
	print "array = "
	if a.empty? then print "Empty array"
	else
		for e in a do print e, " " end
	end
	print "\n\n"
end

array = [1,2,3,4]
print "Original "; show(array)
print "Returned "; show(b=square(array))
print "Modified "; show(array)
puts "Modified == Returned" if b == array

print "\nIn situ modification:\nNew "
square(array) ; show(array)
puts "Class = #{array.class}"
puts "Length= #{array.length}"
