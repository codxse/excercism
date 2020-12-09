module LeapYear (isLeapYear) where

isDivisibleBy4 :: Integer -> Bool
isDivisibleBy4 num = (rem num 4) == 0

isDivisibleBy100 :: Integer -> Bool
isDivisibleBy100 num = (rem num 100) == 0

isDivisibleBy400 :: Integer -> Bool
isDivisibleBy400 num = (rem num 400) == 0

isLeapYear :: Integer -> Bool
isLeapYear year = (isDivisibleBy400 year) || (not(isDivisibleBy100 year) && (isDivisibleBy4 year))
