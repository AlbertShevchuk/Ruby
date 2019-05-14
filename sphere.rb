class Sphere

	def initialize(x)
		@radius = x.to_f
	end
	
	def area
		return ((4*(@radius**2))*Math::PI)
	end
	
	def volume
		return ((4*(@radius**3))*(Math::PI/3))
	end

end

nw = Sphere.new 5
puts nw.area
puts nw.volume

