def fibs(pos)
  last1 = 0
  last2 = 1
  (1..pos).each do
    puts next1 = last2 + last1
    last1 = last2
    last2 = next1
  end
end

def fibs_rec(pos)
  return [0,1,1].shift(pos) if pos == 1 || pos == 2 || pos == 3
  fib_arr = fibso_recc(pos-1)
  fib_arr.push(fibso_recc(pos-1)[pos-2] + fibso_recc(pos-2)[pos-3])
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
