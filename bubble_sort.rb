def bubble_sort(array)
  return nil if array.empty?

  swapped = false
  (0..array.length - 2).each do |index|
    if array[index] > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
      swapped = true
    end
  end

  if swapped
    bubble_sort(array)
  else
    array
  end
end

p bubble_sort([4, 3, 78, 2, 0, 2])
