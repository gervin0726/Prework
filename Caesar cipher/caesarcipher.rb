def solve_cipher (string)
  result = ""
  for i in 0..string.length-1
    result += (string[i].ord.to_int-1).chr
  end
  puts result
end
solve_cipher("ifmmp")
