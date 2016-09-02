#Pablo Hernandez
#Victor Matthews
arr = [42, 89, 23, 1]

def search_array(arr, x)
  count = 0
  arr.each do |num|
    if num == x
      return count
    end
    count += 1
  end
  nil
end

list = [0, 1]

# p list[0..1].inject(0){|sum, x| sum + x}
# p list[1..2].inject(0){|sum, x| sum + x}

new_array = [0]
list.each do |num|
  num += new_array[-1]
  new_array.push(num)
end

i = 0
j = 1
num = 6


def fib(num)
  while j < num - 1
    list << list[i..j].inject(0){|sum, x| sum + x}
    i += 1
    j += 1
  end
end

p list

#Compare current value to previous values that are already sorted. If current value is greater, leave value in place otherwise continue to move down the list until no longer greater.

def insertion_sort(array)  
 array.each_with_index do |el,i|  
   j = i - 1  
   while j >= 0  
     break if array[j] <= el  
     array[j + 1] = array[j]  
     j -= 1  
   end  
   array[j + 1] = el  
 end  
end 
insertion_sort([23,34,46,87,12,1,66])

