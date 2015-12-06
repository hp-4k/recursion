def merge(arr1, arr2)
  result = []
  until arr1.empty? || arr2.empty?
    if arr1[0] < arr2[0]
      result << arr1.shift
    else
      result << arr2.shift
    end
  end
  result << arr1.shift until arr1.empty?
  result << arr2.shift until arr2.empty?
  result
end

def merge_sort(arr)
  return arr if arr.length < 2
  half = arr.length / 2
  merge(merge_sort(arr[0...half]), merge_sort(arr[half...arr.length]))
end

p merge_sort([32, 0, -10, 3, 34, 18, 100, -45, -4])