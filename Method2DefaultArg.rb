def demo(arg1 = "First", arg2 = "Second", arg3 = "Third")
	arg1+arg2+arg3
end

print demo, "\n\n"
print demo("Alpha"), "\n\n"
print demo("Alpha","Beta"), "\n\n"
print demo("Alpha","Beta", "Gamma"), "\n\n"

puts ["a","b","c"].join
puts ["a","b","c"].join(",") # , is a seperator
puts ["a",222,"c"].join(",")

def varArg(arg1, *rest) # *rest = variable length list
	arg1 + rest.join
end

print "\n",varArg("First"), "\n\n"
print varArg("First","Second","Third"), "\n\n"
