module Fib(
   fibcauda
  ) where
  
fibcauda :: Integer -> Integer
fibcauda n = fibaux 0 1 n
      where
        fibaux a b n | n <= 1 = b
                     | otherwise = fibaux b (a+b) (n-1)
