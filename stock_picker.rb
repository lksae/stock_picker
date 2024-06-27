def stock_picker(input_array)
    highest_number = input_array[input_array.length-1]
    index_highest_number = input_array.length-1
    lowest_number = input_array[0]
    index_lowest_number = 0
    input_array.each_with_index do |number, index|
    if number > highest_number and index != 0 and index > index_lowest_number
        highest_number = number
        index_highest_number = index
    end
    if number < lowest_number and index != input_array.length-1 and index < index_highest_number
      lowest_number = number
      index_lowest_number = index
    end
  end
  p output_array = [index_lowest_number, index_highest_number]
end


stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12