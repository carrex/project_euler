# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

from math import sqrt

proc is_prime(n: int): bool = 
  if n < 2: return false
  var sn = int(sqrt(float(n)))
  for i in 2..sn:
    if n %% i == 0:
      return false
  return true

proc max_prime_fact(n: int64): int = 
  result = 1
  var sn = int(sqrt(float(n)))
  for i in 0..sn:
    if is_prime(i) and n %% i == 0:
      result = i

if isMainModule:
  echo max_prime_fact(600851475143)
