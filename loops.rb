
#loop
puts "\nloop\n\n"

i = 0
loop do
	puts i
	i += 1
	if i == 10
		break
	end
end

puts "\nuntil\n\n"

#loop until

while i > 0
	puts i
	i-=1
end

puts "\nupto\n\n"

#upto

i.upto 9 do
	puts i
	i+=1
end

puts "\ndownto\n\n"

#downto

i.downto 0 do
	puts i
	i-=1
end

puts "\neach\n\n"

#each

names = ['Albert','Starlet','Frankie']
names.each {|name| puts name}

puts "\nmap\n\n"

#map

array = [1,2,3]
array.map! { |a| a * 5 }
puts array

puts "\nstep\n\n"

#step

0.step(10,2) do |i|
	puts i
end

puts "\ntimes\n\n"

#times

10.times do
	puts i
	i -= 1
end

puts "\nfor\n\n"

#for

for i in 0..10
	puts i
end

puts "\ncollect\n\n"

#collect

names.collect! {|n| n+"!"}
puts names

puts "\nselect\n\n"

#select

puts [1,2,3,4].select {|i| i % 2 == 0}

puts "\nreject\n\n"
#reject

puts [1,2,3,4].reject {|i| i % 2 == 0}
