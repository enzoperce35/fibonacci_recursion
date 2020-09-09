def fibs(num)
  arr = [0, 1]
  num.times { arr << arr[-2] + arr[-1] }
  arr[0, num + 1]
end

def fibs_rec(num, arr = [0, 1])
  num <= 1 ? arr : fibs_rec(num - 1, arr << arr[-2] + arr[-1])
end

p fibs 6 #=> [0, 1, 1, 2, 3, 5, 8]
p fibs_rec 6 #=> [0, 1, 1, 2, 3, 5, 8]
