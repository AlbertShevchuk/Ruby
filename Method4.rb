a = 
["radar","madam","Madam","amanaplanacanalplanama","9876543210123456789"]

def pal(str)
	str == str.reverse
end

for w in a do
	print w, pal(w) ? " is" : " is not",
	" a palindrome\n\n"
end

def pal1(str)
	puts str + (str == str.reverse ? " is" : " is not") + "a 
palindrome" ; puts
end

for w in a do pal1(w) end;
puts pal("ana").class; puts pal1("ana").class
