





def one_to_fifty(num)
  print num
  num -= 1
  one_to_fifty(num) unless num == 0
end

one_to_fifty(50)
