def fibs(num)
  last1 = 0
  puts last1
  last2 = 1
  puts last2
  (1..num).each do
    puts next1 = last2 + last1
    last1 = last2
    last2 = next1
  end
end

def fibs_rec(num)
  return num if num < 2

  fibs_rec(num - 2) + fibs_rec(num - 1)
end

def fib_wrap(num)
  arr = []
  (0..num).each do |i|
    arr[i] = fibs_rec(i)
  end
  arr
end

def merge_sort(arr)
  new_arr = []
  return arr if arr.length < 2

  # recursively split
  half = arr.length / 2
  l_arr = arr[0..(half - 1)]
  l_arr = merge_sort(l_arr)
  r_arr = arr[half..-1]
  r_arr = merge_sort(r_arr)

  # merge left / right
  l_arr.each do |left|
    right = r_arr[0]
    if right.nil? || left < right
      new_arr << left
    else
      new_arr << right
      r_arr.shift
      redo
    end
  end

  new_arr += r_arr
  new_arr
end

arr = [4, 18, 65, 2, 1, 7, 9, 3]
p merge_sort(arr)