def demo(*arg) #any number of arguments
	return arg
end

def show(a)
	print "array = "
	if a.empty? then print "empty array"
	else
		for e in a do print e, " "end
	end
	print "\n\n"
end

puts
a = demo(1,2,3,4); show(a)
puts "Class = #{a.class}"
puts "Length = #{a.length}"
puts

a = demo(); show(a)
puts "Class = #{a.class}"
puts "Length = #{a.length}"
puts
