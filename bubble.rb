def bubble_sort (arr)
  for i in 0..arr.length-2 do
    for j in 0..arr.length-2 do
    if arr[j] > arr[j+1]
      arr[j], arr[j+1] = arr[j+1], arr[j]
    end
  end
  end
  return arr
end

result1 = bubble_sort([4,3,78,2,0,2])
p result1


def bubble_sort_by(arr)
  for i in 0..arr.length-2 do
    for j in 0..arr.length-2 do
      if (yield arr[j], arr[j+1]) > 0
        arr[j], arr[j+1] = arr[j+1], arr[j]
      end
    end
  end
  return arr
end

result2 = bubble_sort_by(["california","arkansas","maine","washington"]) do |left,right|
  left.length - right.length
end
p result2