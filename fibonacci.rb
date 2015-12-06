def fibs(n)
  return [0] if n <= 1
  return [0, 1] if n == 2
  
  result = [0, 1]
  while result.length < n
    result.push result[-1] + result[-2]
  end
  result
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  temp = fibs_rec(n-1)
  temp << temp[-1] + temp[-2]
end