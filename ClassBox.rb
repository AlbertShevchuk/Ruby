class Box
	def initialize(x,y,z)
		@length = x
		@width = y
		@height = z
	end

	def volume
		@length*@width*@height
	end
end

puts
b = Box.new(1,2,3)
puts "Volume = "+b.volume.to_s
b = Box.new(1.1,2.2,3.3)
puts "Volume = "+b.volume.to_s
puts "Volume = "+
Box.new(2,2,4).volume.to_s
