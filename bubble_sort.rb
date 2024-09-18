def bubble_sort(arr)
  (arr.length - 1).downto(0) do |i|
    0.upto(i - 1) do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
      end
    end
  end
  arr
end

arr = [4, 3, 78, 2, 0, 2]

puts "Sorted Array : #{bubble_sort(arr)}" 
