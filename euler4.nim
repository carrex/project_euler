# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

from math import log10, `^`

proc is_palin(n: int): bool = 
  var m = int(log10(float(n)))
  var l, r: int
  for i in 0..m:
    r = (n /% (10 ^ (    i))) %% 10
    l = (n /% (10 ^ (m - i))) %% 10
    if l != r:
      return false
  return true

proc highest_palin_prod(min, max: int): int =
  var product: int
  for i in min..max:
    for j in min..max:
      product = i * j
      if is_palin(product) and product > result:
        result = product

if isMainModule:
  echo highest_palin_prod(100, 999)
