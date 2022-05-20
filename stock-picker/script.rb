def stock_picker(array)
  starting_index = nil
  ending_index = nil
  total = 0
  highest = -999999

  array.each_with_index do |price, index1|
    
    array.each_with_index do |price, index2|
      total = 0 - array[index1]
      if index2 > index1
        total += array[index2]
        if total > highest
          highest = total
          starting_index = index1
          ending_index = index2
        end
      end
    end
  end
  return [starting_index, ending_index]
end

stock_picker([17,3,6,9,15,8,6,1,10])