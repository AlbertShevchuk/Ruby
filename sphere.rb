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
	@@color = "Yellow"
end

class MyBall < Ball
	@@owner = "Albert"
	def show
		print "The owner of the ball is " + @@owner + "\n"
		print "The color of the ball is " + @@color + "\n"
		print "The area of " + {Sphere:area}.to_s + "\n"
		print "The area of " + {Sphere:volume}.to_s
	end
end

nw = MyBall.new 5
nw.show