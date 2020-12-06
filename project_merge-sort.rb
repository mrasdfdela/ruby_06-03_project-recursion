def merge_sort(arr)
  if arr.length > 1
    mid = arr.length / 2
    first_half = arr[0...mid]
    sec_half = arr[mid..-1]
    arr = semi_sort(merge_sort(first_half), merge_sort(sec_half))
  else
    arr
  end
end

def semi_sort(arr1, arr2, arr=[])
  until zero_l(arr1 + arr2)
    if zero_l(arr1) || zero_l(arr2)
      zero_l(arr1) ? arr.concat(arr2.slice!(0..-1)) : arr.concat(arr1.slice!(0..-1))
    else
      arr1[0] <= arr2[0] ? arr << arr1.shift : arr << arr2.shift
    end
  end
  arr
end

def zero_l(arr)
  arr.length.zero? ? true : false
end

# test for semi_sort
# arr1 = [1,2,4]
# arr2 = [3,5,6]
# p semi_sort(arr1,arr2)

arr = [5,2,1,3,6,4]
print merge_sort(arr)