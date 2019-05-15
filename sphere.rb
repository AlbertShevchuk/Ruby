class Sphere
	def initialize(x)
		@radius = x.to_f
	end
	
	def area
		((4*(@radius**2))*Math::PI)
	end
	
	def volume
		((4*(@radius**3))*(Math::PI/3))
	end
end

class Ball < Sphere
	def initialize(radius,color)
		super(radius)
		@color = color
	end
	
	def show
	"#@color and the radius of the ball is #@radius"
	end
end

class MyBall < Ball
	def initialize(radius,color,owner)
		super(radius,color)
		@owner = owner
	end
	
	def show
		puts "The owner of the ball is " + @owner
		puts "The color of the ball is " + super
		print "The area of " + {Sphere:area}.to_s + "\n"
		print "The area of " + {Sphere:volume}.to_s
	end
end

nw = MyBall.new 2, "yellow", "Albert"
nw.show
puts nw.area