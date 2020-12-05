def fibs(n)
  arr = [0,1]
  (n-1).times { |i| arr.push(arr[-1]+arr[-2]) }
  arr
end

def fibs_rec(n,arr=[0,1])
  if n == 1
    arr
  else
    el = arr[-1] + arr[-2]
    fibs_rec(n - 1, arr << el)
  end
  arr
end

puts
print fibs(3)
print fibs(4)
print fibs(5)
print fibs(6)

puts
print fibs_rec(3)
print fibs_rec(4)
print fibs_rec(5)