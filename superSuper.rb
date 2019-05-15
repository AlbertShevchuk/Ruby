class Trany
	def initialize(trany)
		@trany = trany
	end
end

class Motor < Trany
	def initialize(trany,motor)
		super(trany)
		@motor = motor
	end
	def show
		" and a #@trany transmission"
	end
end

class Fuel < Motor
	def initialize(trany,motor,fuel)
		super(trany,motor)
		@fuel = fuel
	end
	def show
		" #@motor" + super
	end
end

class Size < Fuel
	def initialize(trany,motor,fuel,size)
		super(trany,motor,fuel)
		@size = size
	end
	def show
		" liter #@fuel" + super
	end
end

class Model < Size
	def initialize(trany,motor,fuel,size,model)
		super(trany,motor,fuel,size)
		@model = model
	end
	def show
		" with a #@size" + super
	end
end

class Make < Model
	def initialize(trany,motor,fuel,size,model,make)
		super(trany,motor,fuel,size,model)
		@make = make
	end
	def show
		" #@model" + super
	end
end

class Year < Make
	def initialize(trany,motor,fuel,size,model,make,year)
		super(trany,motor,fuel,size,model,make)
		@year = year
	end
	def show
		" #@make" + super
	end
end

class Owner < Year
	def initialize(trany,motor,fuel,size,model,make,year,owner)
		super(trany,motor,fuel,size,model,make,year)
		@owner = owner
	end
	def show
		puts "#@owner drives a #@year" + super
	end
end

print "Whats your Name: "
z = gets
print "What year is your car: "
y = gets
print "What make is your car: "
x = gets
print "What model is your car: "
w = gets
print "Whats the engine size of your car's motor: "
v = gets
print "What is the fuel type of your car: "
u = gets
t = "Engine"
print "Auto or Manual Transmission: "
s = gets 
puts "\n\n"

s = s.chop
u = u.chop
v = v.chop
w = w.chop
x = x.chop
y = y.chop
z = z.chop

nw = Owner.new s,t,u,v,w,x,y,z	
puts nw.show	
		