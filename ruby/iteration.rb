#Partners 
#Victor Matthews, Jason Perlman

colors = ["blue", "green", "red"]
states = {
  nevada: "Carson City",
  arizona: "Phoenix",
  colorodo: "Denver"
}

colors.each do |color|
  puts color
end

states.each do |state, capital|
  puts "#{state}, #{capital}"
end

p colors
colors.map! do |color|
  color.reverse
end
p colors

numArray = [1,2,3,8,10,125,11,22]
rejectArray = numArray.reject {|num| num<20}
p rejectArray
selectArray = numArray.select {|num| num<20}
p selectArray

mapArray = numArray.keep_if{|num| num<20}
p mapArray

numArray = [1,2,3,8,10,125,11,22]
dropArray = numArray.drop_while{|num| num<20}
p dropArray

numHash = {
  1 => "a",
  2 => "b",
  3 => "c"
}
p numHash.reject{|num, val| num<2}
p numHash.select{|num, val| val == "b"}
p numHash.keep_if{|num, val| num<2}

numHash = {
  1 => "a",
  2 => "b",
  3 => "c"
}
p numHash.drop_while{|num, val| num<2}