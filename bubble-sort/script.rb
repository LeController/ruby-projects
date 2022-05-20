def bubble_sort(array)
  changes = true
  while changes == true do
    changes = false
    array.each_with_index do |number, index|
      if array[index+1] != nil
        if array[index] > array[index+1]
          changes = true
          array[index], array[index+1] = array[index+1], array[index]
        end
      end
    end
  end
  array
end

p bubble_sort([4,3,78,2,0,2])