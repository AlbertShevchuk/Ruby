def demo(a,b,c,d,e,f)
	puts "#{a} #{b} #{c} #{d} #{e} #{f}"
end

array = [1,2,3,4,5,6]

demo(1,2,3,4,5,6)
demo(*array)
demo(*[1,2,3,4,5,6])
demo(*(1..6).to_a)
demo(1,2,*(3..6).to_a)
demo(*[1,"two",3,"four",5,"six"])
