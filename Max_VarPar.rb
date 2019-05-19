def max(first,*rest)
	max=first
	rest.each{|x| max=x if x>max}
	max
end
def maxmin(first,*rest)
	max=min=first
	rest.each{|x| max=x if x>max;
		      min=x if x<min }
	return max,min
end
def max2(first,second,*rest)
	max=first>second ? first : second
	rest.each{|x| max = x if x>max}
	max
end

def headtail(head,*tail)
	return head,tail
end

p max(1);p max(1,2); p max2(1,2)
p maxmin(4,5,6,7,8,9,10)
p max([1,2,3])
a = [1,2,3,4,5,6]
p max(*a)
p maxmin(*[5,6,7,8,9])
p max2(*[4,5,6,7,8])
p headtail(*a); p headtail(a)
